#include <iostream>
#include <stdlib.h>
#include <unistd.h>
#include <arpa/inet.h>
#include <string.h>
#include <thread>
#include <chrono>

using namespace std;

int main() {
    // 1. 创建通信的套接字
    int cfd = socket(AF_INET, SOCK_STREAM, 0);  // 使用trp协议

    // 2. 连接服务器IP PORT
    sockaddr_in addr;
    addr.sin_family = AF_INET;
    addr.sin_port = htons(6666);    // 大端模式端口号
    inet_pton(AF_INET, "127.0.0.1", &addr.sin_addr.s_addr);

    // 3. 连接
    int connres = connect(cfd, (struct sockaddr*)&addr, sizeof(addr));
    if (connres == -1) {
        perror("connect");
        exit(0);
    }

    // 当前时间
    chrono::system_clock::time_point nowTime = chrono::system_clock::now();
    // 时间点转为时间段（单位为秒）
    time_t allSec = chrono::system_clock::to_time_t(nowTime);
    cout << "当前时间" << ctime(&allSec) << endl;

    int number = 0;
    while (true) {
        char buff[1024];
        sprintf(buff, "你好，hello, world, %d...%s\n", number++, ctime(&allSec));
        send(cfd, buff, sizeof(buff), 0);
        // 接收前先清空缓冲区
        memset(buff, 0, sizeof(buff));
        int len = recv(cfd, buff, sizeof(buff), 0);
        if (len > 0) {
            printf("服务端说：%s\n", buff);
        }
        else if (len == 0) {
            printf("服务端断开了连接...\n");
        }
        else {
            perror("recv");
            break;
        }

        // 每间隔1秒发一次数据
        std::this_thread::sleep_for(std::chrono::seconds(1));
;    }

    // 关闭套接字
    close(cfd);

    return 0;
}