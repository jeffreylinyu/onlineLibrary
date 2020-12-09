# 線上書庫



## 概述

​		線上書庫OnlineLibrary，是一個基於SSM框架的項目，內有前端頁面，後端Servlet、Controller、資料庫 . . .，

主要的業務是書籍管理，用戶登入狀態可增、刪、改、查書籍，未登入僅可查詢書籍。書籍資料使用Mybatis傳入

資料庫做持久化保存。																																							

​																																										開發人員: 林 彧



## 使用技術

### 後端

+ JavaSE/EE
+ JavaWeb
+ Maven
+ Spring、SpringMVC
+ RESTful
+ Mybatis
+ MySQL
+ JSP、EL、JSTL

### 前端

+ JavaScript
+ CSS
+ HTML
+ Bootstrap4
+ Git

### 開發環境

+ IntelliJ IDEA
+ Visual Studio Code



## 功能

![head](https://github.com/jeffreylinyu/onlineLibrary/blob/master/readme_img/head.jpg)

### 查詢書籍

+ 熱門書籍：顯示多人點讚書籍(未實現)
+ 快速分類：下拉式選單，可快速查詢分類
+ 輸入收尋：輸入書名或分類，以模糊查詢收尋相關書籍

### 新增書籍

![bookAdd](https://github.com/jeffreylinyu/onlineLibrary/blob/master/readme_img/bookAdd.jpg)


+ 新增書籍頁面：需登入才可跳轉此頁面，否則跳轉至登入畫面；書名、作者、出版日為必填

### 刪除書籍

![bookDelete](https://github.com/jeffreylinyu/onlineLibrary/blob/master/readme_img/bookDelete.jpg)

+ 刪除鈕：登入狀態點擊即可刪除書籍



### 修改書籍

![bookUpdate.jgp](https://github.com/jeffreylinyu/onlineLibrary/blob/master/readme_img/bookUpdate.jgp.png)

+ 修改頁面：登入狀態點擊更改鈕後，顯示當前選取書籍訊息，可自行更改
+ **修改或刪除書籍後，ID會自動重新整理**

### 登入及登出

![login](https://github.com/jeffreylinyu/onlineLibrary/blob/master/readme_img/login.jpg)

+ 登入後，會員狀態更改

![loginChange](https://github.com/jeffreylinyu/onlineLibrary/blob/master/readme_img/loginChange.jpg)



### 註冊

![addUser](https://github.com/jeffreylinyu/onlineLibrary/blob/master/readme_img/addUser.jpg)








