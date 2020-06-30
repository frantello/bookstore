<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html lang="en">
<head>
    <meta charset="utf-8">
    <title><tiles:insertAttribute name="title"/></title>
</head>
<body>
    <header>
        <tiles:insertAttribute name="header"/>
    </header>
    <section class="section">
        <tiles:insertAttribute name="section"/>
    </section>
    <footer>
        <tiles:insertAttribute name="footer"/>
    </footer>
</body>
</html>
