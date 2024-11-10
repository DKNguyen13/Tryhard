<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<table border="1" width="100%">
    <tr>
        <th style="text-align: center;">STT</th>
        <th style="text-align: center;">Cover Image</th>
        <th style="text-align: center;">Tiêu đề</th>
        <th style="text-align: center;">Mã ISBN</th>
        <th style="text-align: center;">Publisher</th>
        <th style="text-align: center;">Publisher Date</th>
        <th style="text-align: center;">Quantity</th>
        <th style="text-align: center;">Authors</th>
        <th style="text-align: center;">Detail</th>
        <c:if test="${isAdmin}">
            <th style="text-align: center;">Action</th>
        </c:if>
    </tr>
    <c:forEach items="${bookList}" var="cate" varStatus="STT">
        <tr>
            <td style="text-align: center;">${STT.index + 1}</td>
            <td style="text-align: center;">
                <img height="150" width="200" src="<c:url value='/image?fname=${cate.coverImage}'/>" />
            </td>
            <td style="text-align: center;">${cate.title}</td>
            <td style="text-align: center;">${cate.isbn}</td>
            <td style="text-align: center;">${cate.publisher}</td>
            <td style="text-align: center;">${cate.publishDate}</td>
            <td style="text-align: center;">${cate.quantity}</td>
            <td style="text-align: center;">${cate.author}</td>
            <td style="text-align: center;">

                <c:if test="${isAdmin}">
                    <a href="<c:url value='/admin/book/detail?id=${cate.bookId}'/>">Detail</a>
                </c:if>
                <c:if test="${!isAdmin}">
                    <a href="<c:url value='/user/book/detail?id=${cate.bookId}'/>">Detail</a>
                </c:if>
            </td>
            <c:if test="${isAdmin}">
                <td style="text-align: center;">
                    <a href="<c:url value='/admin/books/edit?id=${cate.bookId}'/>">Edit</a> |
                    <a href="<c:url value='/admin/books/delete?id=${cate.bookId}'/>">Delete</a>
                </td>
            </c:if>
        </tr>
    </c:forEach>
</table>
