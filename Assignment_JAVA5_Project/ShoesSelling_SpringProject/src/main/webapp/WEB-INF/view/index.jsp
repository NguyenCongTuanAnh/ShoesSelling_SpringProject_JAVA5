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
        <div class="row text-center py-3">
            <div class="col-lg-6 m-auto">
                <h1 class="h1"> XẢ KHO THÁNG 6 </h1>
                <p>
                    🔥 XẢ KHO THÁNG 6/2023 🔥 <a href="" style="text-decoration: none">👉TANH.VN👈</a>
                </p>
                <h4>NHANH TAY LÊN – SỐ LƯỢNG CÓ HẠN</h4>
                <hr>
            </div>
        </div>
        <main>
            <%--                    ----------------------------------------%>
            <!-- Hàng 1 sản Phẩm -->
            <section style="background-color: #eee;">
                <div class="container ">
                    <div class="row">
                        <div class="text-center py-3 bg-white">
                            <hr>
                            <h1>TOP SẢN PHẨM ĐANG HOT THÁNG 6/2023</h1>
                            <hr>
                        </div>
                        <c:forEach items="${productDetailsList.content}" var="product" varStatus="position">
                        <div class="col-md-12 col-lg-4 mb-4 mb-lg-0" style="padding: 10px ">
                            <div class="card">
                                <div class="d-flex justify-content-between p-3">
                                    <p class="lead mb-0">Today's Combo Offer</p>
                                    <div
                                            class="bg-info rounded-circle d-flex align-items-center justify-content-center shadow-1-strong"
                                            style="width: 35px; height: 35px;">
                                        <p class="text-white mb-0 small">${position.index}</p>
                                    </div>
                                </div>
                                <img width="400px" height="300px" src="${product.image}"
                                     class="card-img-top" data-bs-toggle="modal"
                                     data-bs-target="#productModal${position.index}"/>
                                <div class="card-body">
                                    <div class="d-flex justify-content-between">
                                        <p class="small"><a href="#"
                                                            class="text-muted">${product.category.categoryType}</a>
                                        </p>
                                        <p class="small text-danger">
                                            <s>${product.convertVNDToCurrencyFormat(product.importPrice)}</s></p>
                                    </div>

                                    <div class="d-flex justify-content-between mb-3">
                                        <h5 class="mb-0" data-bs-toggle="modal"
                                            data-bs-target="#productModal${position.index}">${product.product.productName}</h5>
                                        <h5 class="text-dark mb-0">${product.convertVNDToCurrencyFormat(product.exportPrice)}</h5>
                                    </div>

                                    <div class="d-flex justify-content-between mb-2">
                                        <p class="text-muted mb-0">Có sẵn: <span class="fw-bold">${product.quantity}</span></p>
                                        <div class="ms-auto text-warning">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- The Modal -->
                        <div class="modal fade" id="productModal${position.index}">
                            <div class="modal-dialog modal-xl">
                                <div class="modal-content">

                                    <!-- Modal Header -->
                                    <div class="modal-header">
                                        <h4 class="modal-title">Thông tin chi tiết</h4>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                    </div>

                                    <!-- Modal body -->
                                    <div class="modal-body">
                                        <!-- Start Banner Hero -->
                                        <div class="row">
                                            <div class="col-6">
                                                <img src="${product.image}" height="400px" width="400px">
                                            </div>
                                            <!-- End Banner Hero -->
                                            <div class="col-6">
                                                <h4 class="box-title mt-5 ">${product.product.productName}</h4>
                                                <h5>Mô tả:</h5>
                                                <p>${product.description}</p>
                                                <h2 class="mt-5 ">
                                                    <small class="text-danger ">GIÁ NIÊM
                                                        YẾT: ${product.convertVNDToCurrencyFormat(product.exportPrice)}
                                                        (36%off)</small>
                                                </h2>
                                                <button class="btn btn-success btn-rounded mr-1"
                                                        data-toggle="tooltip "
                                                        title=" " data-original-title="Add to cart "  onclick="addToCartAlert()">
                                                    <i class="fa fa-shopping-cart "></i><a style="text-decoration: none; color: white" href="/addCart/${product.productDetailID}"> Thêm vào giỏ hàng</a>
                                                </button>
                                                <button class="btn btn-primary btn-rounded mr-1 "
                                                        data-toggle="tooltip "
                                                        title=" " data-original-title="Add to cart ">
                                                    <i class="fa fa-shopping-cart "></i> Mua Ngay
                                                </button>
                                                <button class="btn btn-danger btn-rounded mr-1 btn-outline-white"
                                                        data-toggle="tooltip "
                                                        title=" " data-original-title="Add to cart ">
                                                    <i class="fa fa-heart "></i> WishList
                                                </button>


                                            </div>
                                        </div>
                                        <h4 class="modal-title">Thông số chi tiết</h4>
                                        <hr>
                                        <table class="table table-striped table-product ">
                                            <tbody>
                                            <tr>
                                                <td width="390 ">Thương Hiệu</td>
                                                <td>${product.brand.brandsName}</td>
                                            </tr>
                                            <tr>
                                                <td width="390 ">Chất liệu</td>
                                                <td>${product.material.materialName}</td>
                                            </tr>
                                            <tr>
                                                <td width="390 ">Kích Cỡ</td>
                                                <td>${product.size.size}</td>
                                            </tr>
                                            <tr>
                                                <td width="390 ">Màu Sắc chính</td>
                                                <td>${product.color.colorName}</td>
                                            </tr>
                                            <tr>
                                                <td width="390 ">Nhà Xản Xuất</td>
                                                <td>${product.producer.producerName}</td>
                                            </tr>
                                            <tr>
                                                <td width="390 ">Loại Đế</td>
                                                <td>${product.sole.soleType}</td>
                                            </tr>
                                            <tr>
                                                <td width="390 ">Loại Giày</td>
                                                <td>${product.category.categoryType}</td>
                                            </tr>
                                            <tr>
                                                <td width="390 ">Kiểu Người phù hợp</td>
                                                <td>${product.peopleType.peopleTypeName}</td>
                                            </tr>
                                            <tr>
                                                <td width="390 ">Kiểu Địa Hình</td>
                                                <td>${product.terrainType.terrainName}</td>
                                            </tr>
                                            <tr>
                                                <td width="390 ">Loại Thời Tiết phù hợp</td>
                                                <td>${product.weatherType.weatherName}</td>
                                            </tr>

                                            </tbody>
                                        </table>

                                        <!-- Modal footer -->
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-danger" data-bs-dismiss="modal">
                                                Close
                                            </button>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        </c:forEach>


            </section>
            <hr>

            <nav>
                <ul class="pagination">
                    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                    <c:forEach begin="0" end="${productDetailsList.totalPages - 1}" varStatus="loop">
                        <li class="page-item"><a class="page-link" href="/index?page=${loop.begin + loop.count -1}">${loop.begin + loop.count}</a></li>
                    </c:forEach>
                    <li class="page-item"><a class="page-link" href="#">Next</a></li>
                </ul>
            </nav>
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