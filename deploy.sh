#!/bin/bash

# 部署到 Vercel
# 使用此脚本需要先安装 Vercel CLI：npm install -g vercel

echo "=========================================="
echo "  部署 A股K线图 到 Vercel"
echo "=========================================="
echo ""

# 检查是否安装了 Vercel CLI
if ! command -v vercel &> /dev/null; then
    echo "错误: 未找到 Vercel CLI"
    echo ""
    echo "请先安装："
    echo "  npm install -g vercel"
    echo ""
    echo "或者使用："
    echo "  npx vercel"
    exit 1
fi

# 检查是否已登录
echo "检查登录状态..."
if vercel whoami &> /dev/null; then
    echo "已登录 Vercel 账户"
else
    echo "未登录，请先登录 Vercel"
    vercel login
fi

echo ""
echo "开始部署..."
echo ""

# 部署
vercel --prod

echo ""
echo "=========================================="
echo "  部署完成！"
echo "=========================================="
echo ""
echo "复制上面的 URL 分享给其他人"
echo ""