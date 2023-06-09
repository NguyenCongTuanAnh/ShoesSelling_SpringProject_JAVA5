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
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Quản Lý Sản Phẩm
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="/index">View</a></li>
                        <li><a class="dropdown-item" href="/product-add-view">Chỉnh Sửa</a></li>
                        <li><a class="dropdown-item" href="#">Something</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Quản Lý Hóa Đơn
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="/view-order">View</a></li>
                        <li><a class="dropdown-item" href="#">Chỉnh Sửa</a></li>
                        <li><a class="dropdown-item" href="#">Something</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Quản Lý Thu Chi</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Quản lý Admin</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Quản lí Thống Kê</a>
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
            <a class="nav-icon position-relative text-decoration-none" href="/dashboard">
                <i class="fa fa-fw fa-user text-danger mr-3 fa-2x"></i>
                <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">Login</span>
            </a>
            <hr>

        </div>
    </div>
</nav>
<!-- Close Header -->


</body>

</html>