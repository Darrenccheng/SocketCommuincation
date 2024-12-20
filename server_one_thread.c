#include <iostream>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <arpa/inet.h>

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

    // 4. accept，阻塞并等待用户连接
    struct sockaddr_in cliaddr;
    int clilen = sizeof(cliaddr);
    struct sockaddr* p = (struct sockaddr*)&cliaddr;
    int cfd = accept(lfd, p, &clilen);
    if(cfd == -1)
    {
        perror("accept");
        exit(0);
    }

    char ip[24] = {0};
    std::cout << "客户端的ip为：" << inet_ntop(AF_INET, &cliaddr.sin_addr.s_addr, ip, sizeof(ip)) << std::endl;

    // 和客户端通信
    while (true) {
        char buff[1024];
        int len = recv(cfd, buff, 1024, 0);
        if (len > 0) {
           printf("接收到的数据：%s\n", buff);
           send(cfd, buff, len, 0);
        }
        else if (len == 0) {
            printf("客户端断开了连接\n");
            break;
        }
        else {
            perror("recv");
        }
    }

    // 关闭文件描述符
    close(lfd);
    close(cfd);

    return 0;
}
