 ---
title: "數位人文平台 - 社群網路分析"
description: "數位人文研究平台中將鏈結資料做視覺化處理，可用於社群網路分析"
draft: false
image : "images/project/echarts.png"
bg_image: "images/project/e-charts.PNG"
category: "Digital Humanity"
information:
  - label : "開發者"
    info : "李韋杰"
  - label : "主要目的"
    info : "用視覺化找出更多資訊"
  - label : "使用工具"
    info : "E-charts, JS"
  - label : "完成時間"
    info : "--"
  - label : "技能需求"
    info : "HTML5 / Javascript / CSS3"
---
 ## 社群網路分析視覺化
主要功能是協助中研院內的研究者在研究時能更清楚的察看人物之間的關係遠近，方便研究者進行研究。當時接手的時候已經完成了基本的功能。
搜尋功能只做了:
1. 單一搜尋
2. 兩個搜尋不能刪除
3. 算出兩點之間路徑的功能(and搜尋)還有問題
    -> 然而卻佔據了大半程式碼。
## 加入的功能
1. 以HSL色域進行產生亂數的顏色
    -> 可以達到120~180個絕對不重複且可分辨的顏色了
> 原理:
> HSL顏色規範是把顏色空間定義為一個圓柱體，那只要是在360度中不要太接近就不太會一樣，如果每種顏色差6度就有60個不會重複的顏色。如果切2層或3層就可以達到120~180個絕對不重複的顏色了。
<center><img src="https://ian08005454.github.io/ASCDC_intern/images/project/HSL.png"/><br>HSL色彩空間定義</center>  

2. 重作一般和or搜尋
    ->相同功能之下程式碼減少一半，效率不變
> 原理:
> or搜尋的原理其實與單一搜尋的概念很像，細看後發現單層搜尋和多層搜尋也很像，就把全部都整合在同一種搜尋。

3. 運用老鼠迷宮的改良版做出了and搜尋
> 原理:
> and搜尋其實就是兩點之間連線的意思，當時學姊給了一個老鼠迷宮改版的路線算法，了解其原理後實做出來了，但因為有時候使用者不一定會知道哪兩點是在端點，因此後來在前面加入判斷端點的搜尋，這樣順序不同也都能跑出對結果。
<center><img src="https://ian08005454.github.io/ASCDC_intern/images/project/e-charts.PNG" width="75%" height="75%" /><br>and搜尋</center>  

4. 再搜索功能
> 指把之前做過的搜尋合起來繼續搜尋，而不是以當前的結果進行搜尋，以前的結果會影響後面的結果。
> 困難點:是處理各種and or not 混合在一起的邏輯判斷以及字串分割和優先順續
<center><img src="https://ian08005454.github.io/ASCDC_intern/images/project/再搜索.gif" width="75%" height="75%" /><br>再搜索功能</center>

5. not點與線  
> 加入了not的功能，也加入了一個放了頁面上所有的點的列表，可以讓使用者點選就可以加入not的搜尋條件，還有圖例點一下也會有一樣的效果  
<center><img src="https://ian08005454.github.io/ASCDC_intern/images/project/useNot.gif" width="75%" height="75%" /><br>not的用法</center>

6. 線段搜尋  
> 如同點的搜尋一樣，要包含所有類似的搜尋功能，但因為線的關係，所有的定義會截然不同，且當線與點混在一起搜尋時會造成的情況又會再更複雜，因此現在正努力於這部分，未來將能完全應對所有情況，整理過後大概會遇到以下幾種情況，並給予相對應的處理方式。  
<center><img src="https://ian08005454.github.io/ASCDC_intern/images/project/search_rule.png" width="100%" height="100%" /><br>搜尋處理規則</center>  

## 未來目標:
* ##### 完成線段搜索
* ##### 加入分群系統
* ##### 對圖運用機器學習分群、分色，並進行社群分析
* ##### 增加執行效能
* ##### 運用正規表達模式處理字串