#!/bin/bash

# A股K线图 - 简单HTTP服务器启动脚本
# 用于本地测试和内网访问

PORT=${1:-8080}

echo "=========================================="
echo "  A股K线图 - 本地服务器"
echo "=========================================="
echo ""
echo "服务器启动在: http://localhost:$PORT"
echo "内网访问: http://$(hostname -I | awk '{print $1}'):$PORT"
echo ""
echo "按 Ctrl+C 停止服务器"
echo ""
echo "=========================================="

# 检查Python版本
if command -v python3 &> /dev/null; then
    python3 -m http.server $PORT
elif command -v python &> /dev/null; then
    python -m SimpleHTTPServer $PORT
else
    echo "错误: 未找到Python，请先安装Python"
    exit 1
fi