<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>

<div>
    <h1>Login</h1>
    <div>
        <div>
            <c:if test="${not empty alert}">
                ${alert}
            </c:if>
            <form action="${pageContext.request.contextPath}/login" method="post">
                <div>
                    <label for="email">Email: <span>*</span></label> <br>
                    <input type="text" id="email" name="email" value="${cookie_user}"> <br>
                </div>
                <div>
                    <label for="password">Password: <span>*</span></label> <br>
                    <input type="password" id="password" name="password"><br>
                    <input type="checkbox" id="rememberMe" name="remember" value="on"> Remember
                </div>
                <div>
                    <a href="${pageContext.request.contextPath}/forgotpass">Forget Password?</a> <br>
                </div>
                <div>
                    <button type="submit">Login</button>
                </div>
            </form>
        </div>
    </div>
</div>
