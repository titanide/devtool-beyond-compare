# 基础镜像，从 Makefile 入参获取。
# 默认镜像库为 titan.hub:5000/titanide
# 默认的 Tag 是从系统动态获取
ARG from_hub
ARG from_tag
FROM ${from_hub}template-base:${from_tag}

ARG icon
LABEL metadata.icon="${icon}"

# # 右侧工具栏，数据类型为逗号隔开(逗号后面不能有空格)的字符数组，有效值又 file,git,port,service 具体查看 README
LABEL devtools="file,git"

# # 应用类型，有效值有 webapp, desktopapp，二者选其一
LABEL metadata.type="desktopapp"

# # HOME 目录
LABEL metadata.home="/home/ide"

# # Linux 用户唯一标识。
LABEL metadata.gid=1000

# # Linux 用户组唯一标识。
LABEL metadata.uid=1000

# # Linux 用户名。
LABEL metadata.user="ide"

# # 设置 true 或 false 指定访问应用的时候使用子域名或子路径访问服务, 例如使用子域名 app-foo-bar.example.com 或子路径 example.com/app/foo/bar。
LABEL metadata.usesubdomain=false

# # 设置 true 或 false 指定访问应用的时候告诉网关使用子路径且重写上游应用的子路径或根路径。例如访问 example.com/app/foo/bar, 网关会重写上游路径 '/app/foo/bar' 或 '/' 。
LABEL metadata.rewritesubpath=false

USER root

RUN wget -P /tmp https://www.scootersoftware.com/files/bcompare-4.4.7.28397_amd64.deb \
    && apt-get update \
    && dpkg -i /tmp/bcompare-4.4.7.28397_amd64.deb || apt-get install -f -y

# 要运行桌面应用, 需要创建脚本运行，并将脚本命名为 /usr/bin/app，您还可以配置比较复杂的环境变量或其他依赖，复制到镜像内, 并确保有可执行权限
COPY bin/app /usr/bin/app
RUN chmod +x /usr/bin/app

USER ide

# 如果您添加或修改了 $HOME/ 下面的文件，则需要运行以下一行
RUN /finalize.sh