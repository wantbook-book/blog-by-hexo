---
title: try hexo
date: 2022-07-09 10:29:38
tags:
---

hexo是用来建立个人博客的一个方便的框架。

## 搭建步骤

### 安装hexo

1. 安装git

   windows git

2. 安装node

   使用windows nvm进行node版本的管理，先安装windows nvm。

   `nvm install 16.16.0`

   `nvm use 16.16.0`

3. 局部安装hexo

   `npm install hexo`

### 初始化hexo项目

1. `npx hexo init hexo_blog`

2. `cd hexo_blog && npm install`

### 创建文章

`npx hexo new "hello world"`

含有空格的文章标题需要用双引号包裹

### 图片资源管理

1. _config.yml中设置`post_asset_folder`为`true`

   {%codeblock lang:yaml _config.yml line_number:false%}post_asset_folder: true{%endcodeblock%}
   
2. 


### serve

`npx hexo server`

## 总结

hexo使用起来非常简单，博客默认主题也较为美观。
