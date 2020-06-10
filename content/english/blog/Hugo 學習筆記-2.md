---
title: "Hugo 學習筆記(二) - Markdown文章"
date: 2020-06-09T21:42:30+08:00
author: 李韋杰
image : "images/blog/hugo.png"
bg_image: "images/blog/hugo-bg.jpg"
categories: ["Web"]
tags: ["client side","hugo",markdown]
description: "快速產生出靜態網頁的工具"
draft: false
type: "post"
---
上一篇把hugo安裝完後，要來說說在hugo編輯markdown語法的注意事項，還有常用語法。
還沒看得往這走:[Hugo 學習筆記-1]({{< ref "Hugo 學習筆記-1.md" >}})
## 常用markdown語法
常用的語法可以參考[HackMD](https://hackmd.io/s/tutorials-tw)、[3分鐘學會Markdown常用語法](https://tiida54.github.io/2018/01/03/3%E5%88%86%E9%90%98%E5%AD%B8%E6%9C%83Markdown%E5%B8%B8%E7%94%A8%E8%AA%9E%E6%B3%95/)、[Markdown文件](https://markdown.tw/#overview)。  
## 注意事項  
但在看這些文章前要注意一些事情，hugo與一般Markdown語法有點不同  
{{< rawhtml >}}
  <center><img src="https://ian08005454.github.io/ASCDC_intern/images/blog/Table.PNG" width="100%" height="100%" /><br>Picture 1. Markdown Table</center>
{{< /rawhtml >}}

由於 Markdown 語法的加入圖片不能調整大小，因此建議使用HTML語法。  
## 如何使用及加入 Shortcodes
如果只是要使用HTML的語法則可以參考[Simple Shortcode to Insert Raw HTML in Hugo](https://anaulin.org/blog/hugo-raw-html-shortcode/)這篇的作法。  
實作如下:  
在網站目錄的`\layouts`加入`shortcodes`資料夾  
創立一個名為rawhtml.html的檔案，內容如下  
``` html
<!-- raw html -->
{{.Inner}}
```
使用方式:
```html

```
但其實hugo一開始就加入了一些Shortcodes進去，詳情可以參考[Shortcodes](https://gohugo.io/content-management/shortcodes/)。
常用的有:
{{< rawhtml >}}
  <center><img src="https://ian08005454.github.io/ASCDC_intern/images/blog/code.PNG" width="100%" height="100%" /><br></center>
{{< /rawhtml >}}  

* ref 和 relref -  look up the pages by their relative path
``` 
[Neat]({{< ref "" >}})
[Who]({{< relref "" >}})
```
## **參考資料:** ##
---
[3分鐘學會Markdown常用語法](https://tiida54.github.io/2018/01/03/3%E5%88%86%E9%90%98%E5%AD%B8%E6%9C%83Markdown%E5%B8%B8%E7%94%A8%E8%AA%9E%E6%B3%95/)  
[Markdown文件](https://markdown.tw/#overview)  
[Create Your Own Shortcodes](https://gohugo.io/templates/shortcode-templates/)  
[Simple Shortcode to Insert Raw HTML in Hugo](https://anaulin.org/blog/hugo-raw-html-shortcode/)  
[hugo 文檔](https://gohugo.io/)  
[hugo on github](https://www.gohugo.org/doc/tutorials/github-pages-blog/)  
