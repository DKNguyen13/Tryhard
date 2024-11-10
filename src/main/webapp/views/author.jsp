<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>Danh sách Tác Giả</title>
    <!-- Thêm CSS của DataTables -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css">
</head>
<body>
<h2>Danh sách Tác Giả</h2>
<table id="authorsTable" class="display">
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
            <td>
                <fmt:formatDate value="${author.dateOfBirth}" pattern="dd/MM/yyyy" />
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<!-- Thêm thư viện jQuery -->
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<!-- Thêm thư viện DataTables -->
<script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>

<script>
    $(document).ready(function() {
        $('#authorsTable').DataTable({
            "processing": true, // Cho phép xử lý trong khi tải dữ liệu
            "serverSide": true, // Kích hoạt phân trang phía server (nếu cần)
            "pageLength": 2, // Số bản ghi trên mỗi trang là 2
            "lengthMenu": [2, 5, 10, 25, 50], // Tùy chọn số lượng bản ghi
            "language": {
                "search": "Tìm kiếm:",
                "lengthMenu": "Hiển thị _MENU_ bản ghi",
                "info": "Hiển thị _START_ đến _END_ của _TOTAL_ bản ghi",
                "infoEmpty": "Không có bản ghi nào",
                "paginate": {
                    "first": "Đầu",
                    "last": "Cuối",
                    "next": "Tiếp",
                    "previous": "Trước"
                }
            },
            "ordering": true, // Cho phép sắp xếp
            "columnDefs": [
                { "targets": 0, "orderable": true }, // Cho phép sắp xếp theo ID
                { "targets": 1, "orderable": true }, // Cho phép sắp xếp theo Tên
                { "targets": 2, "orderable": false } // Không cho phép sắp xếp theo Ngày sinh
            ]
        });
    });
</script>

</body>
</html>
