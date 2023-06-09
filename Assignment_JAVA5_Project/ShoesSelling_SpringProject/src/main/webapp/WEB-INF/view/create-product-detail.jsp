<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
    <!-- font-awesome icon cdn -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<body class="container">

<div>
    <form action="">
        <div class="form-group">
            <%--            --------------------------------%>
            <div class="row mb-4">
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label">Product Code</label>
                        <input type="text" class="form-control"/>
                    </div>
                </div>

                <div class="col">
                    <label class="form-label">Product Size: </label>
                    <div class="form-outline">
                        <select name="sizes" class="form-control" class="form-select"
                                aria-label="Default select example">
                            <c:forEach items="${sizeLists}" var="size">
                                <option value="${size.sizeID}">${size.size}</option>
                            </c:forEach>
                        </select>
                        <button class="btn btn-white"><a href=""><i class="fa fa-plus"></i></a></button>
                    </div>
                </div>
            </div>
            <%--    --------------------------%>
            <div class="row mb-4">
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label">Product Name: </label>
                        <input type="text" class="form-control">
                    </div>
                </div>
                <div class="col">
                    <div class="form-outline">
                        <label>Product Weather Type: </label>
                        <select name="sole" class="form-control" class="form-select"
                                aria-label="Default select example">
                            <c:forEach items="${weatherTypeLists}" var="weatherType">
                                <option value="${weatherType.weatherID}">${weatherType.weatherName}</option>
                            </c:forEach>
                        </select>
                        <button class="btn btn-white"><a href=""><i class="fa fa-plus"></i></a></button>
                    </div>
                </div>
            </div>

            <div class="row mb-4">
                <div class="col">
                    <div class="form-outline">
                        <label class="form-label">Image Link: </label>
                        <input type="text" class="form-control">
                    </div>
                </div>
                <div class="col">
                    <div class="form-outline">
                        <label>Product Size: </label>
                        <select name="sizes" class="form-control" class="form-select"
                                aria-label="Default select example">
                            <c:forEach items="${sizeLists}" var="size">
                                <option value="${size.sizeID}">${size.size}</option>
                            </c:forEach>
                        </select>
                        <button class="btn btn-white"><a href=""><i class="fa fa-plus"></i></a></button>
                    </div>
                </div>
            </div>
            <div class="row mb-4">
                <div class="col">
                    <div class="form-outline">
                        <label>Product Color: </label>
                        <select name="colors" class="form-control" class="form-select"
                                aria-label="Default select example">
                            <c:forEach items="${colorLists}" var="color">
                                <option value="${color.colorID}">${color.colorName}</option>
                            </c:forEach>
                        </select>
                        <button class="btn btn-white"><a href=""><i class="fa fa-plus"></i></a></button>
                    </div>
                </div>
                <div class="col">
                    <div class="form-outline">
                        <label>Product Material: </label>
                        <select name="material" class="form-control" class="form-select"
                                aria-label="Default select example">
                            <c:forEach items="${materialLists}" var="material">
                                <option value="${material.materialID}">${material.materialName}</option>
                            </c:forEach>
                        </select>
                        <button class="btn btn-white"><a href=""><i class="fa fa-plus"></i></a></button>
                    </div>
                </div>
            </div>
            <div class="row mb-4">
                <div class="col">
                    <div class="form-outline">
                        <label>Product Brands: </label>
                        <select name="brands" class="form-control" class="form-select"
                                aria-label="Default select example">
                            <c:forEach items="${brandLists}" var="brand">
                                <option value="${brand.brandId}">${brand.brandsName}</option>
                            </c:forEach>
                        </select>
                        <button class="btn btn-white"><a href=""><i class="fa fa-plus"></i></a></button>
                    </div>
                </div>
                <div class="col">
                    <div class="form-outline">
                        <label>Product Categories: </label>
                        <select name="categories" class="form-control" class="form-select"
                                aria-label="Default select example">
                            <c:forEach items="${categoriesLists}" var="category">
                                <option value="${category.categoryID}">${category.categoryType}</option>
                            </c:forEach>
                        </select>
                        <button class="btn btn-white"><a href=""><i class="fa fa-plus"></i></a></button>
                    </div>
                </div>
            </div>
            <div class="row mb-4">
                <div class="col">
                    <div class="form-outline">
                        <label>Product People Type: </label>
                        <select name="people_type" class="form-control" class="form-select"
                                aria-label="Default select example">
                            <c:forEach items="${peopleTypeLists}" var="peopleType">
                                <option value="${peopleType.peopleTypeID}">${peopleType.peopleTypeName}</option>
                            </c:forEach>
                        </select>
                        <button class="btn btn-white"><a href=""><i class="fa fa-plus"></i></a></button>
                    </div>
                </div>
                <div class="col">
                    <div class="form-outline">
                        <label>Product Producer: </label>
                        <select name="producer" class="form-control" class="form-select"
                                aria-label="Default select example">
                            <c:forEach items="${producerLists}" var="producer">
                                <option value="${producer.producerID}">${producer.producerName}</option>
                            </c:forEach>
                        </select>
                        <button class="btn btn-white"><a href=""><i class="fa fa-plus"></i></a></button>
                    </div>
                </div>
            </div>
            <div class="row mb-4">
                <div class="col">
                    <div class="form-outline">
                        <label>Product Sole: </label>
                        <select name="sole" class="form-control" class="form-select"
                                aria-label="Default select example">
                            <c:forEach items="${soleLists}" var="sole">
                                <option value="${sole.soleID}">${sole.soleType}</option>
                            </c:forEach>
                        </select>
                        <button class="btn btn-white"><a href=""><i class="fa fa-plus"></i></a></button>
                    </div>
                </div>
                <div class="col">
                    <div class="form-outline">
                        <label>Product Terrain Type: </label>
                        <select name="sole" class="form-control" class="form-select"
                                aria-label="Default select example">
                            <c:forEach items="${terrainTypeLists}" var="terrainType">
                                <option value="${terrainType.terrainID}">${terrainType.terrainName}</option>
                            </c:forEach>
                        </select>
                        <button class="btn btn-white"><a href=""><i class="fa fa-plus"></i></a></button>
                    </div>
                </div>
            </div>

        </div>
        <button type="submit" class="btn btn-primary btn-lg btn-block">Add</button>
    </form>
</div>
</body>

</html>