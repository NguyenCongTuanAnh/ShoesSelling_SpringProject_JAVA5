<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <title>Bootstrap 5 Checkout Form Example</title>
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <!-- Add icon library -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <%--    ------------------------------------%>

</head>
<body>
<header class="intro">
    <div class="action">
        <a href="/view-cart" title="Back to download and tutorial page" class="btn back">Back to Cart </a>
    </div>

</header>

<main>

    <!-- DEMO HTML -->
    <div class="container">
        <div class="py-5 text-center">

            <h2>PAYMENT FORM</h2>
        </div>

        <div class="row">
            <div class="col-md-4 order-md-2 mb-4">
                <h4 class="d-flex justify-content-between align-items-center mb-3">
                    <span class="text-muted">YOUR CART</span>
                    <span class="badge badge-secondary badge-pill">3</span>
                </h4>
                <ul class="list-group mb-3">
                    <c:forEach items="${sessionScope.shoeCart}" var="cart" varStatus="position">
                        <li class="list-group-item d-flex justify-content-between lh-condensed">
                            <div>
                                <h6 class="my-0">${cart.productDetail.product.productName}</h6>
                                <small class="text-muted">Brief description</small>
                            </div>
                            <span class="text-muted">${cart.productDetail.convertVNDToCurrencyFormat(cart.shoeQuaity * cart.productDetail.exportPrice)}</span>
                        </li>
                    </c:forEach>

                    <li class="list-group-item d-flex justify-content-between bg-light">
                        <div class="text-success">
                            <h6 class="my-0">Promo code</h6>
                            <small>EXAMPLECODE</small>
                        </div>
                        <span class="text-success">-$5</span>
                    </li>
                    <li class="list-group-item d-flex justify-content-between">
                        <span>Total (VNĐ)</span>
                        <strong>${sessionScope.cartTotalPriceString}</strong>
                    </li>
                </ul>

                <form class="card p-2">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Promo code">
                        <div class="input-group-append">
                            <button type="submit" class="btn btn-secondary">Redeem</button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-md-8 order-md-1">
                <h4 class="mb-3">Billing address</h4>
                <form class="needs-validation" novalidate method="post" action="/addOrder" >
                    <div class="mb-3">
                        <label for="">Billing Code</label>
                        <input type="text" class="form-control" name="ordersCode" value="${billingCode}" readonly>
                    </div>
                    <div class="mb-3">
                        <label >Support Staff</label>
                        <select name="employeeCode" class="filter-make filter form-control">
                            <c:forEach items="${staffList}" var="staff">
                                <option value="${staff.employeesID}">${staff.employeesName}
                                    - ${staff.positon.positionName}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label for="firstName">Receive First Name</label>
                            <input type="text" class="form-control" id="firstName" placeholder="Receive First Name" name="receiverFirstName" value="" required>
                            <div class="invalid-feedback">
                                Valid first name is required.
                            </div>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="lastName">Receive Last Name</label>
                            <input type="text" class="form-control" id="lastName" placeholder="Receive Last Name"  name="receiverLastName" value="" required>
                            <div class="invalid-feedback">
                                Valid last name is required.
                            </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="">Receiver Address</label>
                        <input type="text" class="form-control" placeholder="Receiver Address" name="receiverAddress" value="">
                        <div class="invalid-feedback">
                            Please enter a valid Receiver Address for shipping updates.
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="address2">Address 2 <span class="text-muted">(Optional)</span></label>
                        <input type="text" class="form-control" id="address2" placeholder="Address 2" name="receiverAddress2" value="">
                    </div>
                    <div class="mb-3">
                        <label for="">Receiver PhoneNumber </label>
                        <input type="number" class="form-control" placeholder="Receiver PhoneNumber " name="receiverPhonenumber" value="">
                        <div class="invalid-feedback">
                            Please enter a valid Receiver PhoneNumber for shipping updates.
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="">Receiver PhoneNumber 2<span class="text-muted">(Optional)</span> </label>
                        <input type="number" class="form-control" placeholder="Receiver PhoneNumber " name="receiverPhonenumber2" value="">
                        <div class="invalid-feedback">
                            Please enter a valid Receiver PhoneNumber 2 for shipping updates.
                        </div>
                    </div>
                    <hr class="mb-4">
                    <hr class="mb-4">
                    <hr class="mb-4">
                    <div class="mb-3">
                        <label>Create Date</label>
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><a>+</a></span>
                            </div>
                            <input type="datetime-local" class="form-control" placeholder="Create Date" name="createdDate" value="" required>
                            <div class="invalid-feedback" style="width: 100%;">
                                Your username is required.
                            </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label>Appoinment Date<span class="text-muted">(Optional)</span></label>
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><a>+</a></span>
                            </div>
                            <input type="datetime-local" class="form-control" id="" placeholder="Appointment Date" name="appointmentDate" value=""
                                   required>
                            <div class="invalid-feedback" style="width: 100%;">
                                Your username is required.
                            </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label>Ship Date <span class="text-muted">(Optional)</span></label>
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><a>+</a></span>
                            </div>
                            <input type="datetime-local" class="form-control" id="date" placeholder="Ship Date" name="shipDate" value=""
                                   required>
                            <div class="invalid-feedback" style="width: 100%;">
                                Ship Date is required.
                            </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label>Receive Date <span class="text-muted">(Optional)</span></label>
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><a>+</a></span>
                            </div>
                            <input type="datetime-local" class="form-control"placeholder="Ship Date" name="receiveDate" value=""
                                   required>
                            <div class="invalid-feedback" style="width: 100%;">
                                Receive Date is required.
                            </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label>Payment Date </label>
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><a>+</a></span>
                            </div>
                            <input type="datetime-local" class="form-control" placeholder="Payment Date" name="paymentDate" value="" required>
                            <div class="invalid-feedback" style="width: 100%;">
                                Payment Date is required.
                            </div>
                        </div>
                    </div>


                    <hr class="mb-4">
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="same-address">
                        <label class="custom-control-label" for="same-address">Shipping address is the same as my
                            billing address</label>
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="save-info">
                        <label class="custom-control-label" for="save-info">Save this information for next time</label>
                    </div>
                    <hr class="mb-4">

                    <h4 class="mb-3">Payment</h4>

                    <div class="d-block my-3">
                        <div class="custom-control custom-radio">
                            <input name="payment" type="radio" class="custom-control-input" checked onclick="hideForm()"
                                   required>
                            <label class="custom-control-label" for="">On delivery on cash </label>
                        </div>
                        <div class="custom-control custom-radio">
                            <input type="radio" class="custom-control-input" required name="payment"
                                   onclick="showForm()">
                            <label class="custom-control-label" for="">Banking Payment</label>
                        </div>
                        <div class="custom-control custom-radio">
                            <input type="radio" class="custom-control-input" required onclick="showFormBoth()"
                                   name="payment">
                            <label class="custom-control-label" for="">Both Banking and Cash</label>
                        </div>
                        <div class="row" id="formDiv" style="display:none;">
                            <div class="col-md-6 mb-3">
                                <label>Amount of money for banking</label>
                                <input type="number" class="form-control" placeholder="Amount of money for banking" required>
                                <small class="text-muted">Amount of money for banking</small>
                                <div class="invalid-feedback">
                                    Amount of money is required
                                </div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label  >Name on card </label>
                                <input type="text" class="form-control" placeholder="Name on card" required>
                                <div class="invalid-feedback">
                                    Name on card is required
                                </div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label>Credit card number</label>
                                <input type="number" class="form-control" placeholder="Credit card number" required>
                                <div class="invalid-feedback">
                                    Credit card number is required
                                </div>
                            </div>
                        </div>
                        <div class="row" id="formDiv2" style="display:none;">

                            <div class="col-md-6 mb-3">
                                <label>Amount of money for Cash</label>
                                <input type="number" class="form-control" placeholder="Amount of money for Cash" value="" required>
                                <div class="invalid-feedback">
                                    Valid last name is required.
                                </div>
                            </div>
                        </div>
                        <hr class="mb-4">
                        <button class="btn btn-primary btn-lg btn-block" type="submit" onclick="confirm('Are you sure you want to pay')">Confirm to Payment</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- End Demo HTML -->

</main>

<footer class="credit">Author: Manasseh El Bey - Distributed By:</footer>

<!-- Bootstrap 5 JavaScript Bundle with Popper -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/css/index.css">

<%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>--%>
<script>

    function showForm() {
        let formDiv = document.getElementById("formDiv");
        formDiv.style.display = "block";
        hideFormBoth();
    }

    function hideForm() {
        let formDiv = document.getElementById("formDiv");
        formDiv.style.display = "none";

    }

    function showFormBoth() {
        let formDiv = document.getElementById("formDiv2");
        formDiv.style.display = "block";
    }

    function hideFormBoth() {
        let formDiv = document.getElementById("formDiv2");
        formDiv.style.display = "none";

    }

</script>
</body>
</html>