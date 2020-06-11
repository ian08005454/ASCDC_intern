---
title: "Hugo 學習筆記(三) - 主題修改"
date: 2020-06-07T15:33:30+08:00
author: 李韋杰
image : "images/blog/hugo.png"
bg_image: "images/blog/hugo-bg.jpg"
categories: ["Web"]
tags: ["client side","hugo",markdown]
description: "快速產生出靜態網頁的工具"
draft: false
type: "post"
---
Name    | Age
--------|------
Bob     | 27
Alice   | 23

|環境| Hugo | Markdown | HackMD |  
| -----| -------- | -------- | -------- |   
| HTML語法 | 不支援，需搭配Shortcodes | 支持直接寫入 | 支持直接寫入 |  
| 換行 | 後面加兩個空白 | 後面加兩個空白 | 直接enter |    
<center><img src="https://ian08005454.github.io/ASCDC_intern/images/hugo%20principle.PNG" width="100%" height="100%" /><br>Picture 1. hugo principle</center>
# **軟體介紹**:
---
為了作實習的網頁，去研究了一下有沒有辦法有效率的製作靜態網頁，就找到了這套工具，它的原理比較像是運用將go語言寫入html來控制變化和做到快速產生網頁的功能，缺點是必須要依靠是特殊的範本，或自己設計一個通用的範本，且運用一些網站上的範本可能會遇到一些奇怪的bug，通常只要把原來的範例素材放進去就有解了，但這件事完全沒提到過。
<!-- {{< figure src="https://ian08005454.github.io/ASCDC_intern/images/hugo%20principle.PNG" title="hugo principle" width="75%" height="75%" >}} -->
{{< rawhtml >}}
  <center><img src="https://ian08005454.github.io/ASCDC_intern/images/hugo%20principle.PNG" width="100%" height="100%" /><br>Picture 1. hugo principle</center>
{{< /rawhtml >}}

##### hugo缺點:
* 當要改他們提供的主題其實會遇到很多問題。
* 主題能提供的相關文件常常不足。
* 說明文件量太多，但使用者偏少，又以英文居多，其實要完全了解這套軟體是有門檻。
* 有時會遇到奇怪的bug。
##### hugo優點:
* Markdown的編輯功能非常方便，要更改圖片也非常方便
* 很多重複的部分都會自動處理好，還會自動產生必須的網頁出來
* 如果熟悉後網頁能快速方便的產生出來
# **使用方式**:
---
 ## 前置動作
  先去[Hugo Releases](https://github.com/gohugoio/hugo/releases)抓後面為Windows-64bit.zip的檔案
  1. 解壓縮後放在`C:\hugo`裡
  2. 去 `控制台\系統及安全性\系統` 點選 進階系統設定-> 進階 -> 環境變數
  3. 點Path
  4. 點編輯
  5. 點選新增
  6. 填入 `C:\hugo`
 ## 建立網頁
  1. 在 CMD 填入 
```
cd /hugo
hugo new site <網站名稱>
cd <網站名稱>
```
  ## 安裝部落格主題
  主題可以去[官網主題](https://themes.gohugo.io/)找到想要的主題，裡面會說明如何使用。</P>
  通常會用git 把Theme抓到 你的目錄底下的theme資料夾，語法如下，實際上還是要按照說明文件做，因為不確定資料夾結構。
  ```
  git clone git@github.com:themefisher/academia-hugo.git
  ```
  或
  ```
  git submodule add https://github.com/onweru/hugo-swift-theme.git themes/hugo-swift-theme
  ```
  通常會建議去把主題資料夾底下的`exampleSite`的資料夾內容都複製到網站的根目錄，然後再去細看`config.toml` 或是 `config.yml`(fromt = yaml)，大部分的設定都是在這裡修改的。
  結構圖大概如下，這些都是基於json架構設計的，需要注意的是`.yml`是靠排版處理父子關係的。
  ## 建立新文章
  ```
  hugo new posts/<文章名稱>.md
  ```

# **參考資料:**
---
[Hugo教學：部落格網站](https://coolgood88142.github.io/zh-tw/posts/hugo/)

[Simple Shortcode to Insert Raw HTML in Hugo](https://anaulin.org/blog/hugo-raw-html-shortcode/)

[hugo 文檔](https://gohugo.io/)

[hugo on github](https://www.gohugo.org/doc/tutorials/github-pages-blog/)
