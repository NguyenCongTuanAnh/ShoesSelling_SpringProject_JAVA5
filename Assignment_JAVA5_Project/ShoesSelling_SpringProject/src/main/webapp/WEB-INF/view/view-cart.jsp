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
<body class="container">
<div class="bg-light">
    <main>
        <section>
            <div>
                <table class="table">
                    <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Product Code</th>
                        <th scope="col">Product Name</th>
                        <th scope="col">Price</th>
                        <th scope="col">Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${sessionScope.shoeCart}" var="cart" varStatus="position">
                        <tr>
                            <td>${position.index + 1}</td>
                            <td>${cart.productDetail.product.productCode}</td>
                            <td>${cart.productDetail.product.productName}</td>
                            <td>${cart.shoeQuaity} * ${cart.productDetail.exportPrice} = ${cart.shoeQuaity * cart.productDetail.exportPrice}</td>
                            <td>
                                <a class="btn btn-success" href="#"
                                   onclick="thongBao()">Test</a>

                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </section>
    </main>
</div>
</body>

</html>