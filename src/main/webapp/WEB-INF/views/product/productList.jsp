<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<jsp:include page="../include/header.jsp" />
<jsp:include page="../include/productmenu.jsp" />
<section class="productListSection">
	<div id="columns" align="center">
		<c:forEach items="${productList}" var="dto">
			<figure>
				<a href="productInformation?product_id=${dto.product_id }">
					<img src="${dto.imgpath}">
				</a>
				<figcaption>
				${dto.title }<br><hr>
				<fmt:formatNumber value="${dto.price }" pattern="##,###" />원
					<button>좋아요</button>
				</figcaption>
				
			</figure>
		</c:forEach>
	</div>
</section>
<jsp:include page="../include/footer.jsp" />