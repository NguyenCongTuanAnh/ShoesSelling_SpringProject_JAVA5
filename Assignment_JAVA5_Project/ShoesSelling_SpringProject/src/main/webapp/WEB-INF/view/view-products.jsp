<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<body>
<header><h2 style="text-align: center;">Quản Lý Máy Tính</h2></header>
<main>
    <section class="container">
        <a class="btn btn-success" href="/may-tinh/view-add">Add</a>
    </section>
    <section>
        <div class="container">
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Image</th>
                    <th scope="col">Product Code</th>
                    <th scope="col">Product Name</th>
                    <th scope="col">Price</th>
                    <th scope="col">Action</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${productDetailsList}" var="product" varStatus="position">
                    <tr>
                        <td>${position.index + 1}</td>
                        <td>${product.image}</td>
                        <td>${product.product.productCode}</td>
                        <td>${product.product.productName}</td>
                        <td>${product.exportPrice }</td>
                        <td>
                            <a class="btn btn-success" href="">detail</a>
                            <a class="btn btn-primary" href="">update</a>
                            <a class="btn btn-danger" href="">xóa</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
<%--            <nav aria-label="Page navigation example">--%>
<%--                <ul class="pagination">--%>
<%--                    <c:forEach begin="0" end="${ listMayTinh.totalPages -1}" varStatus="loop">--%>
<%--                        <li class="page-item">--%>
<%--                            <a class="page-link" href="/may-tinh/hien-thi?page=${loop.begin + loop.count - 1}">--%>
<%--                                    ${loop.begin + loop.count }--%>
<%--                            </a>--%>
<%--                        </li>--%>
<%--                    </c:forEach>--%>
<%--                </ul>--%>
<%--            </nav>--%>
        </div>
    </section>
</main>
<footer><p style="text-align: center;">HangNT169</p></footer>
</body>
</html>