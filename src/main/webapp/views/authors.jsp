<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Danh sách Tác Giả</title>
    <style>
        .pagination {
            display: flex;
            list-style-type: none;
            padding: 0;
        }
        .pagination li {
            margin: 5px;
        }
        .pagination a {
            text-decoration: none;
            padding: 8px 12px;
            color: blue;
            border: 1px solid #ddd;
        }
        .pagination a.active {
            background-color: #4CAF50;
            color: white;
        }
    </style>
</head>
<body>
<h2>Danh sách Tác Giả</h2>
<table border="1" cellpadding="10">
    <thead>
    <tr>
        <th>ID</th>
        <th>Tên Tác Giả</th>
        <th>Ngày Sinh</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="author" items="${authors}">
        <tr>
            <td>${author.authorId}</td>
            <td>${author.authorName}</td>
            <td>${author.dateOfBirth}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<!-- Phân trang -->
<ul class="pagination">
    <c:forEach begin="1" end="${totalPages}" var="i">
        <li>
            <a href="authors?page=${i}" class="${i == currentPage ? 'active' : ''}">
                    ${i}
            </a>
        </li>
    </c:forEach>
</ul>
</body>
</html>
