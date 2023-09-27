<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
   rel="stylesheet">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/style.css">
<link rel="stylesheet"
   href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <meta charset="UTF-8">
    <style>
    
    /*초기화*/
*{
    margin: 0;
    padding: 0;
    font: normal 12px "Noto Sans CJK KR";
}

ul, ol {
    list-style: none;
}
a{
    text-decoration: none;
    color: #111;
}
input,textarea{outline: none;}

#wrapper{width: 100%;}

/*헤더*/
header{
    width: 100%;
    height: auto;
}
header > div {
    width: 100%;
    box-sizing: border-box;
}
header > .top {
    height: 35px;
    border-bottom: 1px solid #e9e9e9;
}
header > .top > div {
    width: 1200px;
    height: 100%;
    margin: 0 auto;
}
header > .top > div > p {
    float: right;
    margin-top: 8px;
}
header > .top > div > p > a {
    font-size: 12px;
    color: #555;
    margin-right: 10px;
}
header > .top > div a:hover {
    color: #333;
    border-bottom: 1px solid #555;
}

header > .logo {
    height: 115px;
    border-bottom: 1px solid #e9e9e9;
}
header > .logo > div {
    position: relative;
    width: 1200px;
    height: 100%;
    margin: 0 auto;
}
header > .logo > div > a {
    display: inline-block;
    margin-top: 30px;
}
header > .logo img {
    vertical-align: bottom;
    margin-right: 10px;
} 
header > .logo a {
    font-size: 30px;
    font-weight: bold;
}

/*메인*/
#cs {
    width: 100%;
    height: auto;
}
#cs > .main {
    width: 100%;
    height: auto;
}
#cs > .main > .title {
    font-size: 56px;
    text-align: center;
    margin: 60px 0;
    color: #222;
}
#cs > .main > .title > strong {
    font-size: 56px;
    color: #45ad4a;
}

#cs > .main > section {
    width: 1200px;
    height: auto;
    margin: 0 auto;
    margin-top: 36px;
    border-top: 1px solid #e9e9e9;
    padding-top: 10px;
    
    box-sizing: border-box;
}
#cs > .main > section > h1 {
    font-size: 22px;
    font-weight: bold;
}

#cs > .main > section > h1 {
   font-size: 22px;
   font-weight: bold;
}
#cs > .main > section > h1 > a {
    float: right;
    font-size: 14px;
    margin-top: 6px;
    color: #555;
}
#cs > .main > section > h1 > a::after {
    display: inline-block;
    width: 18px;
    height: 18px;
    content: "";
    background: url("../img/cs_sprites.png") no-repeat;
    background-position: -230px -276px;
    background-size: 750px auto;
    vertical-align: top;
    margin-left: 6px;
}
#cs > .main > section > ul {}
#cs > .main > section > ul > li {
    text-indent: 10px;
    margin-top: 12px;
}
#cs > .main > section > ul .title {
    font-size: 18px;
}
#cs > .main > section > ul > li > p {
    float: right;
    margin-right: 10px;
}
#cs > .main > section > ul .uid {
    margin-right: 10px;
}
#cs > .main > section > ul .date {
    color: #777;
}
#cs > .main > .faq > ol {
    width: 1000px;
    height: auto;
    margin: 60px auto;
    overflow: hidden;
}
#cs > .main > .faq > ol > li {
    float: left;
    width: 14.28%;
    height: 128px;
    text-align: center;
}
#cs > .main > .faq > ol > li > a {
    display: inline-block;
    width: 90px;
    height: 90px;
    box-sizing: border-box;
    text-align: center;
    background-image: url("../img/cs_sprites.png");
    background-repeat: no-repeat;
    background-size: 750px auto;
}
#cs > .main > .faq > ol > li span {
    position: relative;
    top: 100px;
    font-size: 13px;
}
#cs > .main > .faq > ol > li:nth-child(1) > a {
    background-position: 0px 0px;
}
#cs > .main > .faq > ol > li:nth-child(2) > a {
    background-position: -184px 0px;
}
#cs > .main > .faq > ol > li:nth-child(3) > a {
    background-position: -92px 0px;
}
#cs > .main > .faq > ol > li:nth-child(4) > a {
    background-position: -276px 0px;
}
#cs > .main > .faq > ol > li:nth-child(5) > a {
    background-position: -368px 0px;
}
#cs > .main > .faq > ol > li:nth-child(6) > a {
    background-position: -92px -485px;
}
#cs > .main > .faq > ol > li:nth-child(7) > a {
    background-position: -644px 0px;
}
#cs > .main > .faq > ol > li:nth-child(1) > a:hover {
    background-position: 0 -92px;
}
#cs > .main > .faq > ol > li:nth-child(2) > a:hover {
    background-position: -184px -92px;
}
#cs > .main > .faq > ol > li:nth-child(3) > a:hover {
    background-position: -92px -92px;
}
#cs > .main > .faq > ol > li:nth-child(4) > a:hover {
    background-position: -276px -92px;
}
#cs > .main > .faq > ol > li:nth-child(5) > a:hover {
    background-position: -368px -92px;
}
#cs > .main > .faq > ol > li:nth-child(6) > a:hover {
    background-position: -92px -577px;
}
#cs > .main > .faq > ol > li:nth-child(7) > a:hover {
    background-position: -644px -92px;
}

#cs > .main > .qna > .ask {
    display: inline-block;
    font-size: 16px;
    font-weight: bold;
    margin-left: 10px;
    margin-top: 10px;
    color: #0078ff;
}
#cs > .main > .tel {
    overflow: hidden;
}
#cs > .main > .tel > article {
    float: left;
    width: 50%;
    height: 300px;
    padding: 16px;
    box-sizing: border-box;
}
#cs > .main > .tel > article > div {
    width: 100%;
    height: 100%;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
}
#cs > .main > .tel > article h3 {
    font-size: 20px;
    font-weight: bold;
    color: #111;
    margin-bottom: 12px;
}
#cs > .main > .tel > article p {
    margin-bottom: 16px;
}
#cs > .main > .tel > article span {
    font-size: 14px;
}
#cs > .main > .tel > article strong {
    font-size: 26px;
    font-weight: bold;
    margin-right: 6px;
}
#cs > .main > .tel > article a {
    font-size: 26px;
    font-weight: bold;
    margin-right: 6px;
}

/*푸터*/
footer{
    width: 100%;
    height: 192px;
    background: #f8f8f8;
    
    border-top: 1px solid #e9e9e9;
    box-sizing: border-box;
}
footer > ul {
    width: 1200px;
    height: 39px;
    margin: 0 auto;
    padding: 15px 0;
    border-bottom: 1px solid #e9e9e9;
    
    box-sizing: border-box;
    text-align: center;
}
footer > ul > li {
    display: inline-block;
    border-right: 1px solid #d7d7d7;
    padding: 0 10px;
}
footer > ul > li:first-child {
    border-left: 1px solid #d7d7d7;
}
footer > div {
    width: 1200px;
    height: auto;
    margin: 0 auto;
    padding-top: 20px;
    box-sizing: border-box;
}
footer  p {
    float: left;
    height: 100%;
    font-size: 12px;
    line-height: 18px;
    color: #676767;
}
footer  p:nth-of-type(2){
    width: 300px;
    margin-left: 30px;
    margin-right: 30px;
}
footer  p > strong {
    display: inline-block;
    padding: 6px 15px 7px 0;
    color: #464646;
    font-size: 14px;
    font-weight: bold;
}

/*버튼 공통*/
.btnWrite {
    float: right;
    padding: 10px 20px;
    text-align: center;
    margin-top: -48px;
    background-color: #067dfd;
    border: 1px solid #0063ce;
    border-radius: 2px;
    font-size: 20px;
    color: #fff;
    box-sizing: border-box;
}
.btnList {
    display: inline-block;
    width: 200px;
    height: 60px;
    margin: 40px auto 0;
    border: 1px solid #ccc;
    border-radius: 34px;
    font-size: 16px;
    color: #000;
    line-height: 58px;
    text-align: center;
    box-sizing: border-box;
}
.btnList:hover {
    background-color: #f7f7f7;
}
.btnSubmit {
    display: inline-block;
    width: 200px;
    height: 60px;
    margin: 40px auto 0;
    background-color: #067dfd;
    border: 1px solid #0063ce;
    border-radius: 34px;
    font-size: 16px;
    color: #fff;
    line-height: 58px;
    text-align: center;
    box-sizing: border-box;
}
.btnSubmit:hover {
    background-color: #0956f6;
}
/*고객센터 sub 공통*/
#cs > div > section > article > nav {
    width: 100%;
    height: auto;
    margin-bottom: 26px;
}
#cs > div > section > article > nav > h1 {
    font-size: 26px;
    font-weight: bold;
}
#cs > div > section > article > nav > h2 {
    font-size: 20px;
}

/*notice 공통*/
#cs > .notice {}
#cs > .notice > nav {
    width: 100%;
    height: 60px;
    border-bottom: 1px solid #e9e9e9;
    box-sizing: border-box;
}
#cs > .notice > nav > div {
    width: 1200px;
    height: 100%;
    margin: 0 auto;
}
#cs > .notice > nav p {
    float: left;
    margin-top: 16px;
    font-size: 16px;
}
#cs > .notice > nav p > span {
    font-size: 12px;
    margin-left: 10px;
    margin-right: 10px;
    color: #777;
}
#cs > .notice > section {
    position: relative;
    width: 1200px;
    height: auto;
    margin: 0 auto;
    overflow: hidden;
}
#cs > .notice > section > aside {
    position: absolute;
    left: 0;
    top: 0;
    width: 220px;
    height: 100%;
    border-right: 1px solid #e9e9e9;
    box-sizing: border-box;
}
#cs > .notice > section > article {
    float: right;
    width: 980px;
    min-height: 600px;
}
#cs > .notice > section > aside > h2 {
    font-size: 24px;
    font-weight: bold;
    margin: 26px 0;
} 
#cs > .notice > section > aside > ul > li {
    margin-bottom: 16px;
}
#cs > .notice > section > aside > ul > li > a {
    font-size: 16px;
    font-weight: bold;
    color: #9e9e9e;
}
#cs > .notice > section > aside > ul > li > a:hover {
    color: #111;
    text-decoration: underline;
}
#cs > .notice > section > aside > ul > .on > a {
    color: #111;
    text-decoration: underline;
}
#cs > .notice > section > article {
    padding: 26px;
    box-sizing: border-box;
}

/*notice - 글목록*/
#cs > .notice > .list > article > table {
    width: 100%;
    border-collapse: collapse;
    border-top: 2px solid #111;
}
#cs > .notice > .list > article > table tr {
    width: 100%;
    height: 26px;
}
#cs > .notice > .list > article > table tr:hover {
    background-color: #f7f7f7;
}
#cs > .notice > .list > article > table td {
    padding: 16px;
    border-bottom: 1px solid #ccc;
}
#cs > .notice > .list > article > table td:last-child {
    text-align: center;
    font-size: 14px;
}
#cs > .notice > .list > article > table a {
    font-size: 16px;
}
#cs > .notice > .list > article > .page {
    text-align: center;
    margin-top: 26px;
}
#cs > .notice > .list > article > .page > a {
    display: inline-block;
    width: 34px;
    height: 34px;
    box-sizing: border-box;
    text-align: center;
    line-height: 34px;
    font-size: 13px;
    font-weight: bold;
    vertical-align: bottom;
}
#cs > .notice > .list > article > .page > .prev {
    font-size: 0;
    background-image: url("../img/cs_sprites.png");
    background-position: -706px -652px;
}
#cs > .notice > .list > article > .page > .next {
    font-size: 0;
    background-image: url('../img/cs_sprites.png');
    background-position: -628px -652px;
}
#cs > .notice > .list > article > .page > .on {
    background: #006cff;
    border-radius: 17px;
    color: #fff;
}

/*notice - 글보기*/
#cs > .notice > .view {}
#cs > .notice > .view > article > nav {
    width: 100%;
    height: auto;
    padding: 26px;
    border-top: 2px solid #111;
    border-bottom: 1px solid #e9e9e9;
    box-sizing: border-box;
}
#cs > .notice > .view > article > nav > .title {
    margin-bottom: 6px;
    font-size: 32px;
    font-weight: bold;
}
#cs > .notice > .view > article > nav > .date {
    font-size: 14px;
    color: #777;
}
#cs > .notice > .view > article > .content {
    width: 100%;
    height: 100%;
    border-bottom: 1px solid #e9e9e9;
    padding: 26px;
    box-sizing: border-box;
}
#cs > .notice > .view > article > .content * {
    font-size: 16px;
    line-height: 32px;
}

/*faq 공통*/
#cs > .faq {}
#cs > .faq > nav {
    width: 100%;
    height: 60px;
    border-bottom: 1px solid #e9e9e9;
    box-sizing: border-box;
}
#cs > .faq > nav > div {
    width: 1200px;
    height: 100%;
    margin: 0 auto;
}
#cs > .faq > nav p {
    float: left;
    margin-top: 16px;
    font-size: 16px;
}
#cs > .faq > nav p > span {
    font-size: 12px;
    margin-left: 10px;
    margin-right: 10px;
    color: #777;
} 
#cs > .faq > section {
    position: relative;
    width: 1200px;
    height: auto;
    margin: 0 auto;
    overflow: hidden;
}
#cs > .faq > section > aside {
    position: absolute;
    left: 0;
    top: 0;
    width: 220px;
    height: 100%;
    border-right: 1px solid #e9e9e9;
    box-sizing: border-box;
}
#cs > .faq > section > aside > h2 {
    font-size: 24px;
    font-weight: bold;
    margin: 26px 0;
}
#cs > .faq > section > aside > ul {}
#cs > .faq > section > aside > ul > li {
    margin-bottom: 16px;
}
#cs > .faq > section > aside > ul > li > a {
    font-size: 16px;
    font-weight: bold;
    color: #9e9e9e;
}
#cs > .faq > section > aside > ul > li > a:hover {
    color: #111;
    text-decoration: underline;
}
#cs > .faq > section > aside > ul > .on > a {
    color: #111;
    text-decoration: underline;
}
#cs > .faq > section > article {
    float: right;
    width: 980px;
    min-height: 600px;
    padding: 26px;
    box-sizing: border-box;
}

/*faq - 글목록*/
#cs > .faq > .list > article > div {
    margin-top: 26px;
}
#cs > .faq > .list > article > div > h3 {
    font-size: 20px;
    font-weight: bold;
    margin-bottom: 6px;
}
#cs > .faq > .list > article > div > ul {
    width: 100%;
    height: auto;
    border: 1px solid #ccc;
    border-radius: 6px;
}
#cs > .faq > .list > article > div > ul > li {
    width: 100%;
    height: auto;
    border-bottom: 1px solid #ccc;
}
#cs > .faq > .list > article > div > ul > li:nth-child(n+4) {
    display: none;
}
#cs > .faq > .list > article > div > ul a {
    display: block;
    width: 100%;
    height: 100%;
    padding: 16px;
    font-size: 16px;
    border-radius: 6px;
    box-sizing: border-box;
}
#cs > .faq > .list > article > div > ul a:hover {
    background: #f7f7f7;
}
#cs > .faq > .list > article > div > ul span {
    font-family: sans-serif;
    font-size: 18px;
    font-weight: bold;
    color: #006cff;
    margin-right: 6px;
}
#cs > .faq > .list > article > div > ul > .more {
    display: block !important;
    border-bottom: none;
    text-align: center;
}

/*faq - 글보기*/
#cs > .faq > .view {}
#cs > .faq > .view > article {}
#cs > .faq > .view > article > nav {
    width: 100%;
    height: auto;
    padding: 26px;
    border-top: 2px solid #111;
    border-bottom: 1px solid #e9e9e9;
    box-sizing: border-box;
}
#cs > .faq > .view > article > nav > .title {
    margin-bottom: 6px;
    font-size: 32px;
    font-weight: bold;
}
#cs > .faq > .view > article > nav > .title > span {
    font-family: sans-serif;
    font-size: 32px;
    font-weight: bold;
    color: #006cff;
    margin-right: 6px;
}
#cs > .faq > .view > article > nav > .date {
    font-size: 14px;
    color: #777;
}
#cs > .faq > .view > article > .content {
    width: 100%;
    height: 100%;
    border-bottom: 1px solid #e9e9e9;
    padding: 26px;
    box-sizing: border-box;
}
#cs > .faq > .view > article > .content * {
    font-size: 16px;
    line-height: 32px;
}

 /*qna - 공통*/
 #cs > .qna {}
 #cs > .qna > nav {
     width: 100%;
     height: 60px;
     border-bottom: 1px solid #e9e9e9;
     box-sizing: border-box;
 }
 #cs > .qna > nav > div {
     width: 1200px;
     height: 100%;
     margin: 0 auto;
 }
 #cs > .qna > nav p {
     float: left;
     margin-top: 16px;
     font-size: 16px;
 }
 #cs > .qna > nav p > span {
     font-size: 12px;
     margin-left: 10px;
     margin-right: 10px;
     color: #777;
 }
 #cs > .qna > section {
     position: relative;
     width: 1200px;
     height: auto;
     margin: 0 auto;
     overflow: hidden;
 }
 #cs > .qna > section > aside {
     position: absolute;
     left: 0;
     top: 0;
     width: 220px;
     height: 100%;
     border-right: 1px solid #e9e9e9;
     box-sizing: border-box;
 }
 
 #cs > .qna > section > aside > h2 {
     font-size: 24px;
     font-weight: bold;
     margin: 26px 0;
 }
 #cs > .qna > section > aside > ul {}
 #cs > .qna > section > aside > ul > li {
     margin-bottom: 16px;
 }
 #cs > .qna > section > aside > ul > li > a {
     font-size: 16px;
     font-weight: bold;
     color: #9e9e9e;
 }
 #cs > .qna > section > aside > ul > li > a:hover {
     color: #111;
     text-decoration: underline;
 }
 #cs > .qna > section > aside > ul > .on > a {
     color: #111;
     text-decoration: underline;
 }
 #cs > .qna > section > article {
     float: right;
     width: 980px;
     min-height: 600px;
     padding: 26px;
     box-sizing: border-box;
 }
 /*qna - 리스트*/
 #cs > .qna > .list > article > table {
     width: 100%;
     border-collapse: collapse;
     border-top: 2px solid #111;
 }
 #cs > .qna > .list > article > table tr {
     width: 100%;
     height: 26px;
 }
 #cs > .qna > .list > article > table tr:hover {
     background-color: #f7f7f7;
 }
 #cs > .qna > .list > article > table td {
     padding: 16px;
     border-bottom: 1px solid #ccc;
 }
 #cs > .qna > .list > article > table td:last-child {
     text-align: center;
     font-size: 14px;
 }
 #cs > .qna > .list > article > table a {
     font-size: 16px;
 }
 #cs > .qna > .list > article > .page {
     text-align: center;
     margin-top: 26px;
 }
 #cs > .qna > .list > article > .page > a {
     display: inline-block;
     width: 34px;
     height: 34px;
     box-sizing: border-box;
     text-align: center;
     line-height: 34px;
     font-size: 13px;
     font-weight: bold;
     vertical-align: bottom;
 }
 #cs > .qna > .list > article > .page > .prev {
     font-size: 0;
     background-image: url('../img/cs_sprites.png');
     background-position: -706px -652px;
 }
 #cs > .qna > .list > article > .page > .next {
     font-size: 0;
     background-image: url('../img/cs_sprites.png');
     background-position: -628px -652px;
 }
 #cs > .qna > .list > article > .page > .num {}
 #cs > .qna > .list > article > .page > .on {
     background: #006cff;
     border-radius: 17px;
     color: #fff;
 }

 /*qna - 글보기*/
 #cs > .qna > .view {}
 #cs > .qna > .view > article {}
 #cs > .qna > .view > article > nav {
     width: 100%;
     height: auto;
     padding: 26px;
     border-top: 2px solid #111;
     border-bottom: 1px solid #e9e9e9;
     box-sizing: border-box;
 }
 #cs > .qna > .view > article > nav > .title {
     margin-bottom: 6px;
     font-size: 32px;
     font-weight: bold;
 }
 #cs > .qna > .view > article > nav > .date {
     font-size: 14px;
     color: #777;
 }
 #cs > .qna > .view > article > .content {
     width: 100%;
     height: 100%;
     border-bottom: 1px solid #e9e9e9;
     padding: 26px;
     box-sizing: border-box;
 }
 #cs > .qna > .view > article > .content * {
     font-size: 16px;
     line-height: 32px;
 }

/*qna - 글쓰기*/
 #cs > .qna > .write > article table {
    width: 100%;
    border-collapse: collapse;
    border-top: 2px solid #111;
}
#cs > .qna > .write > article table tr {
    width: 100%;
    height: 26px;
}
#cs > .qna > .write > article table td {
    padding: 16px;
    border-bottom: 1px solid #ccc;
    font-size: 16px;
}
#cs > .qna > .write > article table td:first-child {
    width: 100px;
}
#cs > .qna > .write > article table input {
    width: 100%;
    height: 40px;
    font-size: 16px;
    box-sizing: border-box;
    text-indent: 10px;
}
#cs > .qna > .write > article table select {
    width: 100px;
    height: 40px;
    font-size: 16px;
    box-sizing: border-box;
}
#cs > .qna > .write > article table select * {
    font-size: inherit;
}
#cs > .qna > .write > article table textarea {
    width: 100%;
    height: 360px;
    resize: none;
    font-size: 16px;
    padding: 10px;
    box-sizing: border-box;
}
    </style>
    <title>케이마켓 고객센터</title>
    <link rel="shortcut icon" type="image/x-icon" href="../img/favicon.ico">
    <link rel="stylesheet" href="../css/common.css">
    <link rel="stylesheet" href="./css/style.css">

</head>
<body>
    <div id="wrapper">
        <header>
            <div class="top">
                <div>
           <jsp:include page="header.jsp" />
                </div>
            </div>
         
                <div>
          
            </div>
        </header>
        <section id="cs">
            <div class="main">
                <h1 class="title">
                    <strong>Team3web</strong>이 도와드릴께요!
                </h1>
                <section class="notice">
                    <h1>
                        공지사항
                        <a href="#">전체보기</a>
                    </h1>
                    <ul>
                        <li>
                            <a href="#" class="title">[안내] 해외결제 사칭 문자 주의</a>
                            <span class="date">22.10.31</span>
                        </li>
                        <li>
                            <a href="#" class="title">[안내] 해외결제 사칭 문자 주의</a>
                            <span class="date">22.10.31</span>
                        </li>
                        <li>
                            <a href="#" class="title">[안내] 해외결제 사칭 문자 주의</a>
                            <span class="date">22.10.31</span>
                        </li>
                        <li>
                            <a href="#" class="title">[안내] 해외결제 사칭 문자 주의</a>
                            <span class="date">22.10.31</span>
                        </li>
                        <li>
                            <a href="#" class="title">[안내] 해외결제 사칭 문자 주의</a>
                            <span class="date">22.10.31</span>
                        </li>
                    </ul>
                </section>
                <section class="faq">
                    <h1>
                        자주 묻는 질문
                        <a href="#">
                            전체보기
                        </a>
                    </h1>
                    <ol>
                        <li>
                            <a href="#">
                                <span>회원</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span>쿠폰이벤트</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span>주문/결제</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span>배송</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span>취소/반품/교환</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span>여행/숙박/항공</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span>안전거래</span>
                            </a>
                        </li>
                    </ol>
                </section>
                <section class="qna">
                    <h1>
                        문의하기
                        <a href="#">
                            전체보기
                        </a>
                    </h1>
                    <ul>
                        <li>
                            <a href="#" class="title">
                                [회원] 개인회원과 법인회원에 차이가 있나요</a>
                                <p>
                                    <span class="uid">chh**</span>
                                    <span class="date">222.10.31</span>
                                </p>
                        </li>
                        <li>
                            <a href="#" class="title">
                                [쿠폰/이벤트] 스마일포인트는 어디에 사용하나요?</a>
                                <p>
                                    <span class="uid">chh**</span>
                                    <span class="date">222.10.31</span>
                                </p>
                        </li>
                        <li>  
                            <a href="#" class="title">
                            [주문/결제] 신용카드 결제 중 오류가 난 경우는 어떻게 하나요?</a>
                            <p>
                                <span class="uid">chh**</span>
                                <span class="date">222.10.31</span>
                            </p>
                        </li>
                        <li>
                            <a href="#" class="title">
                                [배송] 주문한 상품은 언제 배송되나요?</a>
                                <p>
                                    <span class="uid">chh**</span>
                                    <span class="date">222.10.31</span>
                                </p>
                        </li>
                        <li>
                            <a href="#" class="title">
                                [취소/반품/교환] 주문을 취소하고 싶어요</a>
                                <p>
                                    <span class="uid">chh**</span>
                                    <span class="date">222.10.31</span>
                                </p>
                        </li>
                    </ul>
                    <a href="#" class="ask">문의글 작성 ></a>
                </section>
                <section class="tel">
                    <h1>1:1 상담이 필요하신가요?</h1>
                    <article>
                        <div>
                            <h3>고객센터 이용안내</h3>
                            <p>
                                <span>일반회원/비회원</span>
                                <br>
                                <strong>1566-0001</strong>
                                <span>(평일 09:00 ~ 18:00)</span>
                            </p>
                            <p>
                                <span>스마일클럽 전용</span>
                                <br>
                                <strong>1566-0002</strong>
                                <span>(365일 09:00 ~ 18:00)</span>
                            </p>
                        </div>
                    </article>
                    <article>
                        <div>
                            <h3>판매상담 이용안내</h3>
                            <p>
                                <span>판매고객</span>
                                <br>
                                <strong>1566-5700</strong>
                                <span>(평일 09:00 ~ 18:00)</span>
                            </p>
                            <p>
                                <a href="#">판매자 가입 및 서류 접수 안내 ></a>
                            </p>
                        </div>
                    </article>
                </section>
            </div>
        </section>
        <footer>
            <ul>
                <li>
                    <a href="#">회사소개</a>
                </li>
                <li>
                    <a href="#">서비스이용약관</a>
                </li>
                <li>
                    <a href="#">개인정보처리방침</a>
                </li>
                <li>
                    <a href="#">전자금융거래약관</a>
                </li>
            </ul>
            <div>
                <p>
                    <img src="./img/footer_logo.png" alt="푸터로고">
                </p>
                <p>
                    <strong>(주)team3web</strong>
                    <br>
                    부산시 강남구 테헤란로 152 (역삼동 강남파이낸스센터)
                    <br>
                    대표이사 : 홍길동
                    <br>
                    사업자등록번호 : 220-81-83676 사업자정보확인
                    <br>
                    통신판매업신고 : 강남 10630호 Fax : 02-589-8842
                </p>
                <p>
                    <strong>고객센터</strong>
                    <br>
                    Tel : 1234-5678 (평일 09:00 ~ 18:00)
                    <br>
                    스마일클럽/SVIP 전용 : 1522-5700 (365일 09:00~18:00)
                    <br>
                    경기도 부천시 원미구 부일로 223(상동) 투나빌딩 6층
                    <br>
                    Fax : 051-123-4567 | Mail : kmarket@kmarket.co.kr
                    <br>
                </p>
            </div>
        </footer>
    </div>
</body>
</html>