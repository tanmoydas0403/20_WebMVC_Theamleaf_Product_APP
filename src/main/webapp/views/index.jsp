<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
    <head></head>
    <body>
        <h3>Product Info</h3>
        <p><font color="green">${msg}</font></p>

        <form:form action="product" modelAttribute="p" method="POST">
            <table>
                <tr>
                    <td>Name: </td>
                    <td><form:input path="name"/></td>
                </tr>
                <tr>
                    <td>Price: </td>
                    <td><form:input path="price"/></td>
                </tr>
                <tr>
                     <td>Quantity: </td>
                     <td><form:input path="qty"/></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Save"/></td>
                </tr>
            </table>
        </form:form>

        <a href="/products">View Products</a>
    </body>
</html>