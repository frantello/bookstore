<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<form:form method="POST"
           action="${pageContext.request.contextPath}/saveBook"
           enctype="application/x-www-form-urlencoded;charset=UTF-8"
           modelAttribute="book">
    <table>
        <tr>
            <td><form:label path="id">Id</form:label></td>
            <td><form:input path="id" disabled="true"/></td>
        </tr>
        <tr>
            <td><form:label path="name">Name</form:label></td>
            <td><form:input path="name"/></td>
        </tr>
        <tr>
            <td><form:label path="author">Author</form:label></td>
            <td><form:input path="author"/></td>
        </tr>
        <tr>
            <td><form:label path="genre">Genre</form:label></td>
            <td><form:input path="genre"/></td>
        </tr>
        <tr>
            <td><form:button>Save</form:button></td>
        </tr>
    </table>
</form:form>

