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
        <th style="text-align: center;">Authors</th> <!-- Thêm cột Tác giả -->
        <th style="text-align: center;">Action</th>
    </tr>
    <c:forEach items="${bookList}" var="cate" varStatus="STT">
        <tr>
            <td style="text-align: center;">${STT.index + 1}</td>
            <td style="text-align: center;">
                <c:if test="${cate.coverImage.substring(0, 5) != 'https'}">
                    <c:url value="/image?fname=${cate.coverImage}" var="imgUrl"></c:url>
                </c:if>
                <c:if test="${cate.coverImage.substring(0, 5) == 'https'}">
                    <c:url value="${cate.coverImage}" var="imgUrl"></c:url>
                </c:if>
                <img height="150" width="200" src="${imgUrl}" />
            </td>
            <td style="text-align: center;">${cate.title}</td>
            <td style="text-align: center;">${cate.isbn}</td>
            <td style="text-align: center;">${cate.publisher}</td>
            <td style="text-align: center;">${cate.publishDate}</td>
            <td style="text-align: center;">${cate.quantity}</td>
            <td style="text-align: center;">${cate.author}</td>
            <td style="text-align: center;">
                <a href="<c:url value='/admin/category/edit?id=${cate.bookId}'/>">Sửa</a>
                |
                <a href="<c:url value='/admin/category/delete?id=${cate.bookId}'/>">Xóa</a>
            </td>
        </tr>
    </c:forEach>
</table>
