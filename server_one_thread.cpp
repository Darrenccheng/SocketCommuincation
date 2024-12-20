#include <iostream>
#include <stdlib.h>
#include <unistd.h>
#include <arpa/inet.h>
#include <thread>
#include "threadpool/threadpool.h"

using namespace std;

struct SockInfo {
    sockaddr_in addr;
    int fd;
};

void func(SockInfo& info) {
    char ip[24] = {0};
    std::cout << "客户端的ip为：" << inet_ntop(AF_INET, &info.addr.sin_addr.s_addr, ip, sizeof(ip)) << std::endl;

    // 和客户端通信
    while (true) {
        char buff[1024];
        int len = recv(info.fd, buff, 1024, 0); //  客户端若不发数据，服务器就会阻塞在此处
        if (len > 0) {
            printf("接收到的数据：%s\n", buff);
            send(info.fd, buff, len, 0); // 写缓冲区满了，写操作也会阻塞
        }
        else if (len == 0) {
            printf("客户端断开了连接\n");
            break;
        }
        else {
            perror("recv");
        }
    }

    close(info.fd);

    return;
}

// 不断的accept新的连接
void acceptFunc(shared_ptr<ThreadPool> pool, int lfd) {
    // 4. accept，阻塞并等待用户连接
    while (true) {
        SockInfo info;
        socklen_t clilen = sizeof(info.addr);

        info.fd = accept(lfd, (struct sockaddr*)&info.addr, &clilen); // 若没有新的客户端连接，程序就会阻塞在这
        if(info.fd == -1)
        {
            perror("accept");
            break;
        }

        // 放到任务队列中
        pool->addTask(func, ref(info));
    }
    close(lfd);
}

int main() {
    // 1. 创建监听的socket
    int lfd = socket(AF_INET, SOCK_STREAM, 0);  // 使用trp协议

    // 2. socket与本地的端口和ip进行绑定
    sockaddr_in addr;
    addr.sin_family = AF_INET;
    addr.sin_addr.s_addr = INADDR_ANY;
    addr.sin_port = htons(6666);    // 大端模式端口号
    int ret = bind(lfd, (struct sockaddr*)&addr, sizeof(addr));
    if (ret == -1) {
        perror("bind");
        exit(0);
    }

    // 3. 监听
    int listenRes = listen(lfd, 128);
    if (listenRes == -1) {
        perror("listen");
        exit(0);
    }

    shared_ptr<ThreadPool> pool(new ThreadPool(4));
    pool->addTask(acceptFunc, pool, lfd);

    pthread_exit(NULL);
    return 0;
}
