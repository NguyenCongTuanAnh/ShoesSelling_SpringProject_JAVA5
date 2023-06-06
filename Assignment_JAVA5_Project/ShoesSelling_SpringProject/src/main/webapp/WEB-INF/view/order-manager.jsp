<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>

    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <!-- Add icon library -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/css/index.css">
<body class="container" style="background-size: cover;background-repeat: no-repeat">
<!-- Start Top Nav -->
<nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block">
    <div class="container text-light">
        <div class="w-100 d-flex justify-content-between">
            <div>
                <i class="fa fa-envelope mx-2"></i>
                <a class="navbar-sm-brand text-light text-decoration-none" href="mailto:anhnctph19690@fpt.edu.vn">anhnctph19690@fpt.edu.vn</a>
                <i class="fa fa-phone mx-2"></i>
                <a class="navbar-sm-brand text-light text-decoration-none" href="tel:0379361304">0379361304</a> -
                <a class="navbar-sm-brand text-light text-decoration-none" href="tel:03866889751">03866889751</a>
            </div>
            <div>
                <a class="text-light" href="https://www.facebook.com/tuanem051203" target="_blank" rel="sponsored"><i
                        class="fa fa-facebook-f fa-sm fa-fw me-2"></i></a>
                <a class="text-light" href="https://www.instagram.com/tuanem0512/" target="_blank"><i
                        class="fa fa-instagram fa-sm fa-fw me-2"></i></a>
                <a class="text-light" href="https://www.facebook.com/tuanem051203" target="_blank"><i
                        class="fa fa-twitter fa-sm fa-fw me-2"></i></a>
                <a class="text-light" href="https://www.facebook.com/tuanem051203" target="_blank"><i
                        class="fa fa-linkedin fa-sm fa-fw"></i></a>
            </div>
        </div>
    </div>
</nav>
<!-- Close Top Nav -->
<!-- Header -->
<nav class="navbar navbar-expand-lg bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">T.A.N.H</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">GIÀY NIKE</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">GIÀY ADIAS</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">NEW BALANCE</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">MLB</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">XẢ HÀNG</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">ƯU ĐÃI ONLINE</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-outline-dark" href="#">FLASH SALE</a>
                </li>
            </ul>
            <form class="d-flex" role="search">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
            <a class="nav-icon position-relative text-decoration-none" href="/view-cart">
                <i class="fa fa-fw fa-cart-arrow-down text-danger mr-1 fa-2x"></i>
                <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">+99</span>
            </a>
            <a class="nav-icon position-relative text-decoration-none" href="#">
                <i class="fa fa-fw fa-user text-danger mr-3 fa-2x"></i>
                <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">Login</span>
            </a>
            <hr>

        </div>
    </div>
</nav>
<!-- Close Header -->

<!-- Start Search -->

<div class=" py-5  text-center bg-info" id="search">

    <div class=" py-3 row height d-flex justify-content-center ">

        <div class="col-md-8">

            <form class="d-flex" role="search">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>

        </div>

    </div>
    <div>
        <div class="row height d-flex justify-content-center align-items-center " id="filter">
            <div class="col-sm-3 col-xs-6">
                <select data-filter="make" class="filter-make filter form-control">
                    <option value="">Tất Cả</option>
                    <option value="">Xu Hướng</option>
                    <option value="">Xem Tất Cả</option>
                    <option value="">Diện Tích</option>
                    <option value="">Mức Giá</option>
                    <option value="">Số Phòng Ngủ</option>
                </select>
            </div>
            <div class="col-sm-3 col-xs-6">
                <select data-filter="model" class="filter-model filter form-control">
                    <option value="">Tất Cả</option>
                    <option value="">Tăng Dần</option>
                    <option value="">Giảm Dần</option>
                </select>
            </div>

            <div class="col-sm-3 col-xs-6">
                <select data-filter="model" class="filter-model filter form-control">
                    <option value="">Tất Cả</option>
                    <option value="">Tất Cả</option>
                    <option value="">Hà Nội</option>
                    <option value="">Hải Phòng</option>
                    <option value="">TP HCM</option>
                    <option value="">Miền Bắc</option>
                    <option value="">Miền Trung</option>
                    <option value="">Miền Nam</option>
                </select>
            </div>

        </div>
    </div>
    <hr>
    <%--    -----------------------------------------%>

    <!-- Start Featured Product -->

    <%----------------------------%>
    <div class="bg-light">
        <main>
            <%--                    ----------------------------------------%>
            <!-- Hàng 1 sản Phẩm -->
            <section style="background-color: #eee;">
                <div class="container ">
                    <div class="row">
                        <div class="text-center py-3 bg-white">
                            <hr>
                            <h1>Quản Lí Hóa Đơn</h1>
                            <hr>
                        </div>
                    </div>
                </div>

                <table class="table table-striped table-hover">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>Order Code</th>
                        <th>Order Create Date</th>
                        <th>Order EmployeeID - EmployeeName</th>
                        <th>Order Total Price</th>
                        <th>Order Status</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>

                    <c:forEach items="${orderList.content}" var="o" varStatus="status">
                        <tr>
                            <td>${status.index + 1}</td>
                            <td>${o.ordersCode}</td>
                            <td>${o.createdDate}</td>
                            <td>${o.employee.employeesCode} - ${o.employee.employeesName}</td>
                            <td>${o.convertVNDToCurrencyFormat(o.totalOrderPrice)}</td>
                            <td>${o.toStringStatus()}</td>
                            <td>
                                <button class="btn btn-outline-success"><a style="text-decoration: none" href="">Detail
                                    View</a></button>
                                <button class="btn btn-outline-success"><a style="text-decoration: none" href="/view-order-detail/${o.odersID}">Detail Order
                                    View</a></button>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <ul class="pagination container">
                    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                    <c:forEach begin="0" end="${orderList.totalPages - 1}" varStatus="loop">
                        <li class="page-item"><a class="page-link"
                                                 href="/view-order?page=${loop.begin + loop.count  - 1}">${loop.begin + loop.count }</a>
                        </li>

                    </c:forEach>
                    <li class="page-item"><a class="page-link" href="#">Next</a></li>
                </ul>

            </section>
            <hr>

        </main>
    </div>
    <footer><p style="text-align: center;">HangNT169</p></footer>
</body>
<script>
    function addToCartAlert() {
        return alert("Thêm vào giỏ hàng thành công!!!");
    }
</script>
</html>