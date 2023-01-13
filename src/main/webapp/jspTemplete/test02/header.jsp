<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		<header class="d-flex">
			<div class="col-2 d-flex logo align-items-center">
				<h1 class="text-success">melong</h1>
			</div>
			<div class="search d-flex col-10 align-items-center">
			<form method="get" action="/jspTemplete/test02/title_detail.jsp">
				<div class="input-group col-12">
					<input type="text" class="form-control" name="title">
				<div class="input-group-append">
					<button class="btn btn-success" type="submit">검색</button>
				</div>
				</div>
			</form>
			</div>
		</header> 