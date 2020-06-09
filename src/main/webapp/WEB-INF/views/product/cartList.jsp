<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<jsp:include page="../include/header.jsp" />
<section class="cartList">
	<div align="center">
		<table border='1'>
			<tr>
				<th>이미지 경로</th>
				<th>상품명</th>
				<th>수량</th>
				<th>가격</th>
				<th>취소</th>
			</tr> 
			<c:forEach var="cartList" items="${cartList }">
				<tr>
					<td><img src="${cartList.
					
					imgpath }" id="cartImg"></td>
					<td>${cartList.title}</td>
					<td>
						<button type="button" onclick="cntDown('${cartList.cartId}')">-</button>
						${cartList.amount}
						<button type="button" onclick="cntUp('${cartList.cartId}')">+</button>
						<input type="hidden" name="product_id" value="${cartList.product_id}">
					</td>
					<td><fmt:formatNumber value="${cartList.price}" pattern="##,###" />원</td>
					<td><button type="button"
							onclick="location.href='cartDelete?cartId=${cartList.cartId}'">취소</button></td>
				</tr>
			</c:forEach>
			<tr>
				<th>상품금액</th>
				<td colspan="2"><fmt:formatNumber value="${totalPrice}" pattern="##,###" />원</td>
			</tr>
			<tr>
				<th>택배비</th>
				<td colspan="2"><fmt:formatNumber value="${fee}" pattern="##,###" />원</td>
			</tr>
			<tr>
				<th>총금액</th>
				<td colspan="2"><fmt:formatNumber value="${totalMoney}" pattern="##,###" />원</td>
			</tr>
			<tr>

				<td colspan="4">
					<button type="button" onclick="location.href='productAll'">쇼핑 계속하기</button>
					<button type="button" onclick="location.href='cartDeleteAll?userId=${userId}'">장바구니 비우기</button>
					<button type="button"
						onclick="location.href='cartOrder'">전체 상품 주문</button>
				</td>
			</tr>
		</table>
	</div>
</section>
<jsp:include page="../include/footer.jsp" />