<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Responsive sidebar template with sliding effect and dropdown menu based on bootstrap 3">
<title>Hutech</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
<link rel="shortcut icon"
	href="<c:url value='/resources/assets/img/small-logo.png'/>"
	type="image/x-icon">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="<c:url value="/resources/assets/css/dashboard.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/assets/css/mark.css"/>">
</head>

<body>
	<%@ include file="dashboard.jsp"%>
	<div class="main">
		<c:set var="count" value="0" />
		<c:forEach items="${ddv }" var="ddv">
			<c:if
				test="${ddv.tieuchiDiemrenluyen.phieuDrl.maphieu == 'dv01' && ddv.id.machucvu == 1 }">
				<c:set var="count" value="${count + ddv.sodiem}" />
			</c:if>
		</c:forEach>

		<c:set var="count1" value="0" />
		<c:forEach items="${ddv }" var="ddv">
			<c:if
				test="${ddv.tieuchiDiemrenluyen.phieuDrl.maphieu == 'dv01' && ddv.id.machucvu == 2 }">
				<c:set var="count1" value="${count1 + ddv.sodiem}" />
			</c:if>
		</c:forEach>

		<c:set var="count2" value="0" />
		<c:forEach items="${ddv }" var="ddv">
			<c:if
				test="${ddv.tieuchiDiemrenluyen.phieuDrl.maphieu == 'dv01' && ddv.id.machucvu == 3 }">
				<c:set var="count2" value="${count2 + ddv.sodiem}" />
			</c:if>
		</c:forEach>

		<c:set var="count3" value="0" />
		<c:forEach items="${ddv }" var="ddv">
			<c:if
				test="${ddv.tieuchiDiemrenluyen.phieuDrl.maphieu == 'dv01' && ddv.id.machucvu == 4 }">
				<c:set var="count3" value="${count3 + ddv.sodiem}" />
			</c:if>
		</c:forEach>
		
		<c:set var="count4" value="0" />
		<c:forEach items="${ddv }" var="ddv">
			<c:if
				test="${ddv.tieuchiDiemrenluyen.phieuDrl.maphieu == 'dv02' && ddv.id.machucvu == 1 }">
				<c:set var="count4" value="${count4 + ddv.sodiem}" />
			</c:if>
		</c:forEach>

		<c:set var="count5" value="0" />
		<c:forEach items="${ddv }" var="ddv">
			<c:if
				test="${ddv.tieuchiDiemrenluyen.phieuDrl.maphieu == 'dv02' && ddv.id.machucvu == 2 }">
				<c:set var="count5" value="${count5 + ddv.sodiem}" />
			</c:if>
		</c:forEach>

		<c:set var="count6" value="0" />
		<c:forEach items="${ddv }" var="ddv">
			<c:if
				test="${ddv.tieuchiDiemrenluyen.phieuDrl.maphieu == 'dv02' && ddv.id.machucvu == 3 }">
				<c:set var="count6" value="${count6 + ddv.sodiem}" />
			</c:if>
		</c:forEach>

		<c:set var="count7" value="0" />
		<c:forEach items="${ddv }" var="ddv">
			<c:if
				test="${ddv.tieuchiDiemrenluyen.phieuDrl.maphieu == 'dv02' && ddv.id.machucvu == 4 }">
				<c:set var="count7" value="${count7 + ddv.sodiem}" />
			</c:if>
		</c:forEach>
		<!-- Xep loai -->
		
		<c:set var="xeploai" value="" />
		<c:forEach items="${ld}" var="ld">
			<c:if test="${count >= ld.maloaidiem}">
				<c:set var="xeploai" value="${ld.tengoi}" />
			</c:if>
		</c:forEach>
		<table class="table table-striped table-bordered text-center">
			<thead>
				<tr>
					<th scope="col">Học kỳ</th>
					<th scope="col">Năm học</th>
					<th scope="col">Tình trạng</th>
					<th scope="col">Tác vụ</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row">1</th>
					<th>2020-2021</th>
					
					<td><span class="status bg-danger">Đang xét</span></td>
					<td><a style="font-size: 16px;" href="danh-gia-lop-chua-xong"><i
							class="fas fa-pencil-alt"></i></a></td>
				</tr>
				<tr>
					<th scope="row">2</th>
					<th>2019-2020</th>
					<td><span class="status">Hoàn thành</span></td>
					<td><a style="font-size: 16px;" href="danh-gia-lop-da-xong"><i
							class="fas fa-eye"></i></a></td>
				</tr>

			</tbody>
		</table>

	</div>
</body>

</html>