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
                    <h5 class="modal-title" id="addModelLabel">Add Product</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form action="addProduct" method="post" class="p-2" name="addProductForm">
                    <div class="mb-3">
                        <label class="form-label">Product Ref</label>
                        <input class="form-control" name="ref" type="text" placeholder="Product ref" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Product Name</label>
                        <input class="form-control" name="name" type="text" placeholder="Product Name" required>
                    </div>
                    <div class="mb-3">
                            <label class="form-label">Category</label>
                            <select class="form-select">
                                <c:forEach items="${categories}" var="categorie">
                                    <option value="${categorie.name()}">${categorie.name()}</option>
                                </c:forEach>
                            </select>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Price</label>
                        <input class="form-control" name="price" type="number" placeholder="Price" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Quantity</label>
                        <input class="form-control" name="quantity" type="number" min="1" placeholder="Quantity" required>
                    </div>
                    <div class="mb-3">
                        <div class="dropdowns-select">
                            <label class="form-label">Stock</label>
                            <select class="form-select">
                                <c:forEach items="${stocks}" var="stock">
                                <option value="${stock.id}">${stock.name}</option>
                                </c:forEach>
                            </select>
                        </div>
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
                <th scope="col">Reference</th>
                <th scope="col">Name</th>
                <th scope="col">Category</th>
                <th scope="col">Price</th>
                <th scope="col">Quantity</th>
                <th scope="col">Stock</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${products}" var="product">
            <tr>
                <td data-bs-toggle="modal" data-bs-target="#updateModel" onclick="chargeModel(event)">${product.id}</td>
                <td data-bs-toggle="modal" data-bs-target="#updateModel" onclick="chargeModel(event)">${product.ref}</td>
                <td data-bs-toggle="modal" data-bs-target="#updateModel" onclick="chargeModel(event)">${product.name}</td>
                <td data-bs-toggle="modal" data-bs-target="#updateModel" onclick="chargeModel(event)">${product.categorie}</td>
                <td data-bs-toggle="modal" data-bs-target="#updateModel" onclick="chargeModel(event)">${product.price}</td>
                <td data-bs-toggle="modal" data-bs-target="#updateModel" onclick="chargeModel(event)">${product.quantity}</td>
                <td data-bs-toggle="modal" data-bs-target="#updateModel" onclick="chargeModel(event)">${product.stock}</td>
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