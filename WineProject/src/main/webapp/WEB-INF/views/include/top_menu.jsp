<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath }/" />


<!-- Header -->
			<header id="header">
				<a href="${root}main"><h1>WINE EASY</h1></a>
				<nav>
					<ul>
						<li><a href="${root}subscribe">구독서비스</a></li>
						<li><a href="${root}product">와인판매</a></li>
						<li><a href="${root}notice">공지사항</a></li>
						<li><a href="${root}user/login">로그인/회원가입</a></li>
					</ul>
				</nav>
			</header>