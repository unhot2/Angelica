<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<jsp:include page="../include/header.jsp" />
<script>
	$(document).on('click', '#addCartBtn', function() {
		$.ajax({
			url : "insertCart",
			data : $("#insertCart").serialize(),
			success : function(data) {
				var chk = confirm("장바구니에 저장되었습니다. 장바구니로 이동하시겠습니까?")
				if (chk) {
					location.href = "cartList"
				}
			}
		})
	})

	$(document).on(
			'click',
			'#payment',
			function() {
				location.href = "payOrder?product_id=" + $(".product_id").val()
						+ "&amount=" + $("select[name='amount']").val()
			})
			
	function pzlogin() {
		alert("로그인 하셔야 합니다.")
	}
</script>
<section class="productInformationSection">
	<div align="center" style="margin-bottom: 120px;">
		<fieldset
			style="border: 2px dashed #c8c8c8; border-radius: 8px; width: 80%">
			<legend align="right" style="padding: 50px 50px; color: lightgray;">
				<font size="5"><b>Product Infomation</b></font>
			</legend>
			<table>
				<tr>
					<td><img src=${productInfo.imgpath } id="img"></td>
					<td>
						<table>
							<tr>
								<td><img src="resources/img/etc/like1.png"><img
									src="resources/img/etc/like2.png"></td>
							</tr>
							<tr>
								<td><a id="product">상품명</a></td>
								<td><a id="product1">&nbsp;&nbsp;${productInfo.title }</a></td>
							</tr>
							<tr>
								<td><a id="product">상품가격</a></td>
								<td><a id="product1">&nbsp;&nbsp;<fmt:formatNumber
											value="${productInfo.price }" pattern="##,###" />원
								</a></td>
							</tr>
							<tr>
								<td id="product">수량</td>
								<td>
									<form id="insertCart">
										<select class="select" name="amount">
											<c:forEach begin="1" end="99" var="i">
												<option value="${i }">${i }</option>
											</c:forEach>
										</select>&nbsp;개 <input type="hidden" name="title"
											value="${productInfo.title }"> <input type="hidden"
											name="product_id" class="product_id"
											value="${productInfo.product_id }"> <input
											type="hidden" name="price" value="${productInfo.price }">
									</form>
								</td>
							</tr>
							<tr>
								<td colspan="2">
								<c:choose>
									<c:when test="${userId eq null}">
											<button type="button" onclick="pzlogin()">장바구니 넣기</button>
										</c:when>
										<c:otherwise>
											<button type="button" id="addCartBtn">장바구니 넣기</button> 
										</c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test="${userId eq null}">
											<button type="button" onclick="pzlogin()">바로 결제</button>
										</c:when>
										<c:otherwise>
											<button type="button" id="payment">바로 결제</button>
										</c:otherwise>
									</c:choose>
									<button type="button" onclick="location.href='index'">상품
										목록</button>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td colspan="2"><img src=${productInfo.detailImgpath }></td>
				</tr>
			</table>
		</fieldset>
	</div>
</section>
<jsp:include page="../include/footer.jsp" />