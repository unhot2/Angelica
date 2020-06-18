<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<jsp:include page="../include/header.jsp" />
<script>
	$(document).on('click', '#pwdBtn', function() {
		$("#alterPwd").attr('action', "alterPwd")
		$("#alterPwd").submit()
	})

</script>
<style>
	.alterPw{max-width:18%; max-height:50%; margin-left:700px; margin-bottom:100px;}
</style>
<section class="alterPwdSection">
	<div module="member_findpasswd">
    <!--@css(/css/module/member/find_passwd.css)-->
    <!--
        $nextURL = /member/passwd/find_passwd_question.html
     -->
    <div class="alterPw">
        <h3><img src="resources/img/etc/비밀번호변경.jpg" alt="아이디 /비밀번호 찾기" /></h3>
        <fieldset>
           <form id="alterPwd" action="alterPwd">
			<table>
				<tr>
				<th>변경할 비밀번호</th>
				
			</tr><td><input type="text" name="userPwd" placeholder="변경할 비밀번호 입력">
				<input type="hidden" name="userId" value="${id }"></td>
			<tr>
				
			</tr>
				<tr>
					<td colspan="2"><p class="button">
                <a href="#none" id="pwdBtn" ><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/btn_submit.gif" alt="입력" /></a>
            </p></td>
				</tr>
			</table>
	
</form>
</section>
<jsp:include page="../include/footer.jsp" />