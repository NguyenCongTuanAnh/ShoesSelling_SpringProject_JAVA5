<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Add icon library -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
                        <th scope="col">Quantity</th>
                        <th scope="col">Price X Quantity = Price</th>
                        <th scope="col">Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${sessionScope.shoeCart}"
                               var="cart" varStatus="position">
                        <tr>
                            <td>${position.index + 1}</td>
                            <td>${cart.productDetail.product.productCode}</td>
                            <td>${cart.productDetail.product.productName}</td>
                            <td><input type="number" value="${cart.shoeQuaity}"
                                       name="${cart.productDetail.product.productCode}"></td>
                            <td>${cart.productDetail.convertVNDToCurrencyFormat(cart.productDetail.exportPrice)}
                                X ${cart.shoeQuaity}
                                = ${cart.productDetail.convertVNDToCurrencyFormat(cart.shoeQuaity * cart.productDetail.exportPrice)}</td>
                            <td>
                                <button class="btn btn-info btn-sm"><i class="fa fa-edit"></i>
                                </button>
                                <button class="btn btn-danger btn-sm" ><a href="/remove-cartItems/${cart.productDetail.productDetailID}"><i class="fa fa-trash-o"></i></a>
                                </button>
                            </td>
                        </tr>
                    </c:forEach>
                    <tr>
                        <td><a href="/index" class="btn btn-success"><i class="fa fa-angle-left"> </i> Continue</a>
                        </td>
                        <td colspan="2" class="hidden-xs"></td>
                        <td class="hidden-xs text-center"><strong>Total Product Type/Product</strong> <p>${sessionScope.cartSize}/${sessionScope.totalCartProduct}</p>
                        </td>
                        <td class="hidden-xs text-center"><strong>Tổng tiền: ${sessionScope.cartTotalPriceString}</strong></td>

                        <td><a href="/checkoutForOrder" class="btn btn-success btn-block">Thanh toán <i
                                class="fa fa-angle-right"></i></a>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </section>
    </main>
</div>


<%-----------------------------------------------------------------------------------------------------------------------------------------------------------%>


</body>
<script>

</script>
</html>