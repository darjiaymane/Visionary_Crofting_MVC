<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="../static/components/dashboard/header.jsp"%>
<main class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Dashboard</h1>
        <div class="btn-toolbar mb-2 mb-md-0">
            <button data-bs-toggle="modal" data-bs-target="#addModal" type="button" class="btn btn-sm btn-outline-secondary">
                Add A Stock
            </button>
        </div>
    </div>
    <div class="modal fade" id="addModal" tabindex="-1" aria-labelledby="addModelLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="addModelLabel">Add Stock</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form action="addStock" method="post" CLASS="p-2" name="addStockForm">
                    <div class="mb-3">
                        <label class="form-label">Stock Name</label>
                        <input class="form-control" name="name" type="text" placeholder="Stock Name" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Email</label>
                        <input class="form-control" name="email" type="email" placeholder="Email" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Address</label>
                        <input class="form-control" name="address" type="text" placeholder="Address" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Phone</label>
                        <input class="form-control" name="phone" type="text" placeholder="Phone Number" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Password</label>
                        <input class="form-control" name="password" type="password" placeholder="Password" required>
                    </div>
                        <button type="submit" class="krishok-btn btn">Submit</button>
                </form>
            </div>
        </div>
    </div>
    <h2>Section title</h2>
    <div class="table-responsive">
        <table class="table table-striped table-sm">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Name</th>
                <th scope="col">Email</th>
                <th scope="col">Phone</th>
                <th scope="col">Address</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${stocks}" var="stock">
            <tr>
                <td data-bs-toggle="modal" data-bs-target="#updateModel" onclick="chargeModel(event)">${stock.id}</td>
                <td data-bs-toggle="modal" data-bs-target="#updateModel" onclick="chargeModel(event)">${stock.name}</td>
                <td data-bs-toggle="modal" data-bs-target="#updateModel" onclick="chargeModel(event)">${stock.email}</td>
                <td data-bs-toggle="modal" data-bs-target="#updateModel" onclick="chargeModel(event)">${stock.phone}</td>
                <td data-bs-toggle="modal" data-bs-target="#updateModel" onclick="chargeModel(event)">${stock.address}</td>
                <td data-bs-toggle="modal" data-bs-target="#updateModel" onclick="chargeModel(event)"><i class="fas fa-eye text-primary fw-light"></i></td>
            </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</main>
</div>
</div>
<%@include file="../static/components/dashboard/footer.jsp"%>