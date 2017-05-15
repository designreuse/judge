<?xml version="1.0" encoding="UTF-8"?>
<!--
    Document   : main
    Created on : Apr 9, 2016, 3:11:13 AM
    Author     : zhanhb
-->
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page"
          xmlns:decorator="http://www.opensymphony.com/sitemesh/decorator"
          version="2.0">

    <jsp:directive.page contentType="text/html" pageEncoding="UTF-8" session="false"/>

    <jsp:scriptlet>
        response.setHeader("Pragma", "no-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0);
    </jsp:scriptlet>

    <jsp:expression>"&lt;!DOCTYPE html&gt;\r\n"</jsp:expression>
    <html>
        <head>
            <meta charset="utf-8"/>
            <meta name="renderer" content="webkit"/>
            <meta http-equiv="Cache-Control" content="no-siteapp"/>
            <meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
            <title><decorator:title default="Welcome to JudgeOnline"/></title>
            <!--<link href="${pageContext.request.contextPath}/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css" rel="stylesheet"/>-->

            <link href="${pageContext.request.contextPath}/css/site.css?_=${applicationScope.startUpDate}" rel="stylesheet"/>
            <link href="${pageContext.request.contextPath}/sample.png" rel="shortcut icon"/>
            <script src="${pageContext.request.contextPath}/webjars/jquery/1.12.4/jquery.min.js"><!----></script>
            <script src="${pageContext.request.contextPath}/js/site.js?_=${applicationScope.startUpDate}"><!----></script>
            <decorator:head/>
        </head>
        <body id="page-home">
            <div id="page">
                <jsp:include page="/nav.html"/>
                <!-- end nav -->
                <div id="content" class="clearfix">
                    <decorator:body/>
                </div>
                <!-- end content -->
                <jsp:include page="/footer.html"/>
            </div>
            <!-- end page -->
            <jsp:include page="/ga.html"/>
        </body>
    </html>
</jsp:root>
