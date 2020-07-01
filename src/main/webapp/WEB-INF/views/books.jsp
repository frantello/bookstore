<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<ul>
    <c:forEach items="${books}" var="book">
        <c:url value="/bookEditor" var="editBookUrl" />
        <li><a href="${editBookUrl}?id=${book.id}">Edit</a> ${book.name} - ${book.author}</li>
    </c:forEach>
</ul>

<c:if test="${empty books}">
    <p>Not found books</p>
</c:if>

<c:url value="/bookEditor" var="addBookUrl" />
<a href="${addBookUrl}">Add</a>
<script>
    $(function() {
        alert('ready!')
    });
</script>
