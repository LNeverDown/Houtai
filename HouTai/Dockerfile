# 使用官方的 Python 镜像作为基础镜像
FROM python:3.7

# 设置工作目录
WORKDIR /app

# 复制当前目录的内容到工作目录
COPY . /app

# 安装依赖
RUN pip install --no-cache-dir -r requirements.txt

# 暴露应用的端口
EXPOSE 5000

# 运行命令来启动应用
CMD ["python", "manager.py", "runserver"]