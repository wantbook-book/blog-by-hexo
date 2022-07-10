#!/bin/sh
WORKDIR=/app
cd ${WORKDIR}
npm install
rm /app/node_modules/hexo-theme-ayer/source/images/alipay.jpg /app/node_modules/hexo-theme-ayer/source/images/wechat.jpg
cp /app/source/_images/alipay.jpg /app/node_modules/hexo-theme-ayer/source/images/alipay.jpg
cp /app/source/_images/wechat.jpg /app/node_modules/hexo-theme-ayer/source/images/wechat.jpg
cp /app/source/_images/sideicon.jpg /app/node_modules/hexo-theme-ayer/source/images/sideicon.jpg
npx hexo clean
npx hexo generate
npx hexo server