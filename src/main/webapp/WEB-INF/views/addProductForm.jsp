<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Product</title>
</head>
<body>
    <h1>Add Product</h1>
    <form action="<%=request.getContextPath()%>/addProduct" method="post">
    <input type="number" id="productId" name="productId" value="1" required>
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required><br>
        <label for="price">Price:</label>
        <input type="number" id="price" name="price" required><br>
        <label for="stock">Stock:</label>
        <input type="number" id="stock" name="stock" required><br>
        <label for="imageUrl">Image URL:</label>
        <input type="text" id="imageUrl" name="imageUrl" required><br>
        <label for="pcode">Product Code:</label>
        <input type="text" id="pcode" name="pcode" required><br>
        <button type="submit">Add Product</button>
    </form>
</body>
</html>