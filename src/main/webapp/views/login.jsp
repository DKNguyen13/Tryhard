<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/commons/taglib.jsp" %>
<c:url value="/" var="URL"></c:url>

<div style="max-width: 400px; margin: 50px auto; padding: 20px; border: 1px solid #ddd; border-radius: 10px; box-shadow: 0 4px 8px rgba(0,0,0,0.18); text-align: center;">
    <h1 style="font-size: 2em; margin-bottom: 20px; color: #e6550d;">Login</h1>

    <c:if test="${not empty alert}">
        <div class="alert" style="color: #d96f4f; font-weight: bold; margin-bottom: 15px;">${alert}</div>
    </c:if>

    <form action="${pageContext.request.contextPath}/login" method="post">
        <div style="margin-bottom: 15px; text-align: left;">
            <label for="email" style="font-weight: bold;">Email:</label><br>
            <input type="text" id="email" name="email" value="${cookie_user}" placeholder="Enter your email" required
                   style="width: 100%; padding: 8px; margin-top: 5px; border: 1px solid #ddd; border-radius: 5px;">
        </div>

        <div style="margin-bottom: 15px; text-align: left;">
            <label for="password" style="font-weight: bold;">Password:</label><br>
            <input type="password" id="password" name="password" placeholder="Enter your password" required
                   style="width: 100%; padding: 8px; margin-top: 5px; border: 1px solid #ddd; border-radius: 5px;">
        </div>

        <div style="margin-bottom: 15px; text-align: left;">
            <input type="checkbox" id="rememberMe" name="remember" value="on">
            <label for="rememberMe">Remember Me</label>
        </div>

        <button type="submit" style="width: 100%; background-color: #ff7300; color: white; padding: 10px; border: none; border-radius: 5px; cursor: pointer; font-weight: bold; transition: background-color 0.3s;">
            Login
        </button>

        <div style="margin-top: 15px;">
            <a href="${pageContext.request.contextPath}/forgotpass" style="color: #007bff; text-decoration: none;">Forgot Password?</a>
        </div>
    </form>
</div>




</html>
