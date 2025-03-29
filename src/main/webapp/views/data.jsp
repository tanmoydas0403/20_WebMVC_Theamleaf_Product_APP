<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
    <head></head>
    <body>
        <a href="/">+Add New Product</a>
        <h3>Product List</h3>
        <table border="1">
            <thead>
                <tr>
                    <th>S.No</th>
                    <th>Name</th>
                    <th>Price</th>
                    <th>Quantity</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${products}" var="product" varStatus="index">
                    <tr>
                        <td>${index.count}</td>
                        <td>${product.name}</td>
                        <td>${product.price}</td>
                        <td>${product.qty}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>