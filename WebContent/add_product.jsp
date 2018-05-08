<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Products Store Application</title>
</head>
<body>
    <center>
        <h1>Products Management</h1>
        <h2>
            <a href="/new">Add New Product</a>
            &nbsp;&nbsp;&nbsp;
            <a href="/list">List All Products</a>
             
        </h2>
    </center>
    <div align="center">
        <c:if test="${product != null}">
            <form action="update" method="post">
        </c:if>
        <c:if test="${product == null}">
            <form action="insert" method="post">
        </c:if>
        <table border="1" cellpadding="5">
            <caption>
                <h2>
                    <c:if test="${product != null}">
                        Edit Book
                    </c:if>
                    <c:if test="${product == null}">
                        Add New Book
                    </c:if>
                </h2>
            </caption>
                <c:if test="${product != null}">
                    <input type="hidden" name="id" value="<c:out value='${product.id}' />" />
                </c:if>           
            <tr>
                <th>Name: </th>
                <td>
                    <input type="text" name="name" size="45"
                            value="<c:out value='${product.name}' />"
                        />
                </td>
            </tr>
            <tr>
                <th>Price: </th>
                <td>
                    <input type="text" name="price" size="5"
                            value="<c:out value='${product.price}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Description: </th>
                <td>
                    <input type="text" name="description" size="45"
                            value="<c:out value='${product.description}' />"
                    />
                </td>
            </tr>
               <tr>
                <th>Category: </th>
                <td>
                  <select name="category" value='${product.category}' >
					  <option value="laptops">laptops</option>
					  <option value="phones">phones</option>
					  <option value="cameras">cameras</option>
					  <option value="accessorie">accessorie</option>
				</select>
                </td>
            </tr>
            
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save" />
                </td>
            </tr>
        </table>
     	</form>
    </div>   
</body>
</html>