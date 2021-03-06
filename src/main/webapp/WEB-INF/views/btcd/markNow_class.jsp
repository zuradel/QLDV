<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<body>

	<div class="main">

		<table  id="markBtcd" class="table table-striped table-bordered text-center ">
			<thead>
				<tr>
					<th scope="col">STT</th>
					<th scope="col">MSSV</th>
					<th scope="col">Họ và tên</th>
					<th scope="col">Điểm cá nhân</th>
					<th scope="col">Điểm lớp</th>
					<th scope="col">Điểm khoa</th>
					<th scope="col">Điểm trường</th>
					<th scope="col">Xếp Loại</th>
					<th scope="col">Tác vụ</th>
				</tr>
			</thead>
			<tbody>

				<c:set var="count" value="0" />
				<c:forEach items="${listTK}" var="TK">
					<c:set var="countdv1" value="0" />
					<c:forEach items="${listDiemdv }" var="ddv">
						<c:if
							test="${ddv.tieuchiDiemrenluyen.phieuDrl.maphieu == 'dv02' && ddv.id.machucvu == 1  && ddv.taikhoan.username == TK.username}">
							<c:set var="countdv1" value="${countdv1 + ddv.sodiem}" />
						</c:if>
					</c:forEach>
					<c:set var="countdv2" value="0" />
					<c:forEach items="${listDiemdv }" var="ddv">
						<c:if
							test="${ddv.tieuchiDiemrenluyen.phieuDrl.maphieu == 'dv02' && ddv.id.machucvu == 2  && ddv.taikhoan.username == TK.username}">
							<c:set var="countdv2" value="${countdv2 + ddv.sodiem}" />
						</c:if>
					</c:forEach>
					<c:set var="countdv3" value="0" />
					<c:forEach items="${listDiemdv }" var="ddv">
						<c:if
							test="${ddv.tieuchiDiemrenluyen.phieuDrl.maphieu == 'dv02' && ddv.id.machucvu == 3  && ddv.taikhoan.username == TK.username}">
							<c:set var="countdv3" value="${countdv3 + ddv.sodiem}" />
						</c:if>
					</c:forEach>
					<c:set var="countdv4" value="0" />
					<c:forEach items="${listDiemdv }" var="ddv">
						<c:if
							test="${ddv.tieuchiDiemrenluyen.phieuDrl.maphieu == 'dv02' && ddv.id.machucvu == 4  && ddv.taikhoan.username == TK.username}">
							<c:set var="countdv4" value="${countdv4 + ddv.sodiem}" />
						</c:if>
					</c:forEach>
					<c:set var="xeploai" value="" />
					<c:forEach items="${ld}" var="ld">
						<c:if test="${countdv1 >= ld.maloaidiem}">
							<c:set var="xeploai" value="${ld.tengoi}" />
						</c:if>
					</c:forEach>
					<c:set var="count" value="${count + 1}" />
					<tr>

						<th class="align-middle" scope="row">${count}</th>
						<td class="align-middle">${TK.username}</td>
						<td class="align-middle">${TK.hoten}</td>
						<td class="align-middle"><c:if test="${countdv4 != 0}">
							${countdv4 }
						</c:if> <c:if test="${countdv4 == 0}">
							...
						</c:if></td>
						<td class="align-middle"><c:if test="${countdv3 != 0}">
							${countdv3 }
						</c:if> <c:if test="${countdv3 == 0}">
							...
						</c:if></td>
						<td class="align-middle"><c:if test="${countdv2 != 0}">
							${countdv2 }
						</c:if> <c:if test="${countdv2 == 0}">
							...
						</c:if></td>
						<td class="align-middle"><c:if test="${countdv1 != 0}">
							${countdv1 }
						</c:if> <c:if test="${countdv1 == 0}">
							...
						</c:if></td>
						<td class="align-middle">${xeploai}</td>
						<td class="align-middle"><form
								action="/QLDVSpringMVC/Getusernamenow" method="post">
								<input type="hidden" name="username" value="${TK.username}">
								<button class="btn btn-outline-primary btn-sm" type="submit">
									<i class="fas fa-eye "></i>
								</button>
							</form></td>

						<!-- <a style="font-size: 16px;" href="chi-tiet-diem"></a> -->
					</tr>
				</c:forEach>


			</tbody>
		</table>
	</div>

</body>

