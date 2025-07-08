<!DOCTYPE html>
<html>
<head>

    <%@ include file="base.jsp" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to right, #c6ffdd, #fbd786, #f7797d);
            min-height: 100vh;
        }

        .glass-container {
            margin: 4rem auto;
            max-width: 1000px;
            padding: 2rem;
            border-radius: 1.25rem;
            background: rgba(255, 255, 255, 0.2);
            backdrop-filter: blur(12px);
            -webkit-backdrop-filter: blur(12px);
            box-shadow: 0 8px 32px rgba(31, 38, 135, 0.2);
            border: 1px solid rgba(255, 255, 255, 0.3);
        }

        h1 {
            text-align: center;
            font-weight: bold;
            color: #2c3e50;
            margin-bottom: 2rem;
        }

        .table thead {
            background-color: rgba(44, 62, 80, 0.9);
            color: white;
        }

        .table tbody tr {
            background-color: rgba(255, 255, 255, 0.85);
        }

        .table th, .table td {
            vertical-align: middle !important;
        }

        .table td a {
            font-size: 1.2rem;
            margin-right: 0.5rem;
            text-decoration: none;
        }

        .table td a:hover {
            opacity: 0.8;
        }

        .fa-pen-nib {
            color: #3498db;
        }

        .fa-trash {
            color: #e74c3c;
        }

        .btn-add {
            margin-top: 2rem;
            padding: 0.6rem 1.6rem;
            background: linear-gradient(135deg, #00b09b, #96c93d);
            color: white;
            font-weight: 500;
            border: none;
            border-radius: 50px;
            box-shadow: 0 0 10px rgba(0, 176, 155, 0.4);
            transition: all 0.3s ease;
        }

        .btn-add:hover {
            transform: scale(1.05);
            box-shadow: 0 0 18px rgba(0, 176, 155, 0.7);
        }
    </style>
</head>

<body>

    <div class="glass-container">
        <h1>Welcome to Product App</h1>

        <table class="table table-hover table-bordered rounded">
            <thead>
                <tr>
                    <th scope="col">Sr.No</th>
                    <th scope="col">Product Name</th>
                    <th scope="col">Description</th>
                    <th scope="col">Price</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${products}" var="p">
                    <tr>
                        <th scope="row">TECHONLY${p.prodId}</th>
                        <td>${p.prodName}</td>
                        <td>${p.prodDescription}</td>
                        <td class="font-weight-bold">&#8377; ${p.prodPrice}</td>
                        <td>
                            <a href="update/${p.prodId}" title="Edit"><i class="fa-solid fa-pen-nib"></i></a>
                            <a href="delete/${p.prodId}" title="Delete"><i class="fa-solid fa-trash"></i></a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <div class="text-center">
            <a href="addproduct" class="btn btn-add">+ Add Product</a>
        </div>
    </div>

</body>
</html>
