# 基于Windows Server Core作为基础镜像
FROM mcr.microsoft.com/windows/servercore:ltsc2019

# 设置工作目录
WORKDIR D:\app

# 安装JDK（根据实际情况选择合适的JDK版本和路径）
ENV JAVA_HOME=C:\Users\59184\JDK
ENV PATH=$PATH;%JAVA_HOME%\bin

# 复制应用程序代码到容器中
COPY . .

EXPOSE 8085
# 设置应用程序所需的环境变量（根据需要进行相应的配置）
ENV SPRING_PROFILES_ACTIVE=default
