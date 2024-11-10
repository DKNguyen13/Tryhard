<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<p><strong>User ID:</strong> ${sessionScope.account.id}</p>

<!-- Tạo một vùng container chứa hình ảnh và thông tin -->
<div style="display: flex; align-items: center; justify-content: center; padding: 20px;">
  <!-- Phần hình ảnh -->
  <div style="margin-right: 20px;">
    <img src="<c:url value='/image?fname=${bookModel.coverImage}'/>" alt="Book Cover" style="width: 300px; height: 400px; object-fit: cover;" />
  </div>

  <!-- Phần thông tin sách -->
  <div>
    <p><strong>Title:</strong>${bookModel.title}</p>
    <p><strong>Author:</strong> ${bookModel.author}</p>
    <p><strong>ISBN:</strong> ${bookModel.isbn}</p>
    <p><strong>Publisher:</strong> ${bookModel.publisher}</p>
    <p><strong>Publish Date:</strong> ${bookModel.publishDate}</p>
    <p><strong>Quantity:</strong> ${bookModel.quantity}</p>
    <p><strong>Description:</strong> ${bookModel.description}</p>

    <!-- Liên kết Review -->
    <p style="display: inline-block; margin-right: 10px;">
      <a href="javascript:void(0);" onclick="openReviewPanel()">Review</a>
    </p>
    <p style="display: inline-block;">
      <a href="javascript:void(0);" onclick="openWriteReviewPanel()">Write a Review</a>
    </p>

  </div>
</div>

<!-- Panel Review -->
<div id="reviewPanel" style="display: none; position: fixed; top: 0; left: 0; width: 100%; height: 100%; background-color: rgba(0, 0, 0, 0.5); justify-content: center; align-items: center;">
  <div style="background-color: white; padding: 20px; border-radius: 5px; width: 50%; max-height: 80%; overflow: auto;">
    <h3>Reviews for ${bookModel.title}</h3> <br>

    <!-- Phần danh sách review với thanh cuộn -->
    <div style="max-height: 400px; overflow-y: auto; margin-bottom: 20px;">
      <!-- Lặp qua danh sách các review -->
      <c:forEach var="review" items="${reviews}">
        <div style="margin-bottom: 15px;">
          <p><strong>User:</strong> ${review.fullname}  <strong>      Rating:</strong> ${review.rating}</p>
          <p><strong>Review:</strong> ${review.review_text}</p>
        </div>
      </c:forEach>
    </div>

    <div style="display: flex; justify-content: center; gap: 20px;">
      <button onclick="closeReviewPanel()">Close</button>
    </div>
  </div>
</div>

<!-- Panel Write Review -->
<div id="writeReviewPanel" style="display: none; position: fixed; top: 0; left: 0; width: 100%; height: 100%; background-color: rgba(0, 0, 0, 0.5); justify-content: center; align-items: center;">
  <div style="background-color: white; padding: 20px; border-radius: 5px; width: 50%; max-height: 80%; overflow: auto;">
    <h3>Write a Review for ${bookModel.title}</h3> <br>

    <!-- Form Write Review -->
    <form action="<c:url value='/book/submitReview'/>" method="POST">
      <input type="hidden" name="bookId" value="${bookModel.bookId}" />

      <label for="rating">Rating:</label><br>
      <input type="number" name="rating" id="rating" min="1" max="5" required /><br><br>

      <label for="reviewText">Review:</label><br>
      <textarea name="reviewText" id="reviewText" rows="4" cols="50" required></textarea><br><br>

      <div style="display: flex; justify-content: center; gap: 20px;">
        <button type="submit">Submit Review</button>
        <button type="button" onclick="closeWriteReviewPanel()">Close</button>
      </div>
    </form>
  </div>
</div>

<script>
  // Mở panel review
  function openReviewPanel() {
    document.getElementById('reviewPanel').style.display = 'flex';
  }

  // Đóng panel review
  function closeReviewPanel() {
    document.getElementById('reviewPanel').style.display = 'none';
  }

  // Mở panel write review
  function openWriteReviewPanel() {
    document.getElementById('writeReviewPanel').style.display = 'flex';
  }

  // Đóng panel write review
  function closeWriteReviewPanel() {
    document.getElementById('writeReviewPanel').style.display = 'none';
  }

  // Đóng panel nếu người dùng nhấn ra ngoài
  window.onclick = function(event) {
    var reviewPanel = document.getElementById('reviewPanel');
    var writeReviewPanel = document.getElementById('writeReviewPanel');
    if (event.target == reviewPanel) {
      closeReviewPanel();
    }
    if (event.target == writeReviewPanel) {
      closeWriteReviewPanel();
    }
  }
</script>
