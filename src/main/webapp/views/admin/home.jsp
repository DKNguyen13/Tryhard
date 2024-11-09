<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Danh Sách Sách</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            background-color: white;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 12px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        img {
            max-width: 100px;
            max-height: 150px;
            object-fit: cover;
        }
    </style>
</head>
<body>

<h1 style="text-align: center; padding: 20px;">Danh Sách Sách</h1>

<table>
    <thead>
    <tr>
        <th>Hình ảnh</th>
        <th>Thông tin sách</th>
    </tr>
    </thead>
    <tbody>
    <!-- Duyệt qua danh sách sách từ request hoặc session -->
    <c:forEach var="book" items="${books}">
        <tr>
            <!-- Cột Hình ảnh -->
            <td>
                <img src="${book.cover_image}" alt="Cover Image"/>
            </td>

            <!-- Cột Thông tin sách -->
            <td>
                <strong>Tiêu đề:</strong> ${book.title} <br/>
                <strong>Mã ISBN:</strong> ${book.isbn} <br/>
                <strong>Tác giả:</strong>
                <c:forEach var="author" items="${book.authors}">
                    ${author.author_name}<c:if test="${not empty author.next}">, </c:if>
                </c:forEach><br/>
                <strong>Publisher:</strong> ${book.publisher} <br/>
                <strong>Ngày xuất bản:</strong> ${book.publish_date} <br/>
                <strong>Số lượng:</strong> ${book.quantity} <br/>
                <strong>Đánh giá:</strong>
                <c:if test="${book.rating != null}">
                    ${book.rating}
                </c:if>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>