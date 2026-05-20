# A股K线图追踪

实时追踪A股K线图的Web应用

## 功能

- 实时股票价格查询
- 交互式K线图
- 成交量分析
- 红涨绿跌显示

## 本地运行

```bash
# 方法1：使用启动脚本
./start.sh

# 方法2：直接使用Python
python3 -m http.server 8080
```

然后访问：`http://localhost:8080`

## 在线访问

应用已部署到 Vercel，访问地址：

**https://a-stock-kline.vercel.app**

## 使用说明

1. 输入6位股票代码（如：000001、600000）
2. 点击"查询"按钮
3. 查看实时价格和K线图

## 数据来源

- 实时数据：腾讯财经 API
- K线数据：模拟数据（演示用）

## 技术栈

- HTML5
- ECharts 5.x
- 纯前端，无需后端

## 部署

### Vercel

```bash
npx vercel
```

### Netlify

```bash
npm install -g netlify-cli
netlify deploy --prod
```

## 注意事项

- 由于跨域限制，某些API可能无法直接访问
- 建议在交易时间内使用
- 数据仅供参考，不构成投资建议