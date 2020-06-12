---
title: "Hugo 學習筆記(三) - host on github"
date: 2020-06-11T15:30:30+08:00
author: 李韋杰
image : "images/blog/hugo.png"
bg_image: "images/blog/hugo-bg.jpg"
categories: ["網頁"]
tags: ["前端","hugo", "git","CMD"]
description: "快速產生出靜態網頁的工具"
draft: false
type: "post"
---
當網頁都完成後就必須找台server host 上去，這裡樣補充的使用是github page。 
以下是git上去專案網站的語法，需要把網址改成自己的，且`cd`到工作目錄: 
``` cmd
# remove, public folder will created later
RD /S public

$ git add .
git commit -m 'hugo project init'

# push
git push -u origin master

# Create a new orphand branch (no commit history) named gh-pages
git checkout --orphan gh-pages

# Unstage all files
# -rf themes/hyde
git reset

# Add and commit that file
git add .
git commit -m "INIT: initial commit on gh-pages branch"

# Push to remote gh-pages branch
git push origin gh-pages

# Return to master branch
git checkout master

# Remove the public folder to make room for the gh-pages subtree
RD /S public

# Add the gh-pages branch of the repository. It will look like a folder named public
git subtree add --prefix=public git@github.com:<your-github-account>/hugo_blog.git gh-pages --squash

# Pull down the file we just committed. This helps avoid merge conflicts
git subtree pull --prefix=public git@github.com:<your-github-account>/hugo_blog.git gh-pages

# Run hugo. Generated site will be placed in public directory (or omit -t ThemeName if you're not using a theme)
hugo

# Add everything
git add -A

# Commit and push to master
git commit -m "Updating site" && git push origin master

# Push the public subtree to the gh-pages branch
git subtree push --prefix=public git@github.com:<your-github-account>/hugo_blog.git gh-pages
```
之後只要跑最後三段個指令即可。可以寫成CMD檔執行，複製一下存起來
``` cmd
cd /hugo/ASCDC_intern
git add -A
git commit -m "Updating site" && git push origin master
git subtree push --prefix=public https://github.com/ian08005454/ASCDC_intern.git gh-pages
```

## **參考資料:**##
---
[在 Github Pages 建立 Hugo 靜態網站](https://kaichu.io/2015/07/12/my-first-post/)</br>
[hugo 文檔](https://gohugo.io/)</br>
[hugo on github](https://www.gohugo.org/doc/tutorials/github-pages-blog/)</br>
