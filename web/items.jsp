<%--
  Created by IntelliJ IDEA.
  User: abdab
  Date: 3/5/2022
  Time: 8:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<jsp:include page="layout/header.jsp"/>

<div class="container">


    <div class="main-box " style="margin-top:100px;">

        <table id="example" class="table table table-striped table-bordered">
            <thead>
            <tr>
                <th>Barcode</th>
                <th>Item Name</th>
                <th>Price</th>
                <th>Update</th>
                <th>Delete</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach  items="${items}" var="item" >
            <tr>
                <td>${item.itemBarcode}</td>
                <td>${item.itemName}</td>
                <td>${item.price}</td>
                <td>
                    <button class="btn btn-warning btn-xs">Update</button>
                </td>
                <td>
                    <button onclick="deleteItem(${item.itemId})" class="btn btn-danger btn-xs">Delete</button>
                </td>
            </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>

</div>
<!-- /.container -->

<jsp:include page="layout/footer.jsp"/>

<script>
    function deleteItem(itemId){
        swal({
                title: "Are you sure?",
                text: "If you where this item you will not appled to recover",
                type: "warning",
                showCancelButton: true,
                confirmButtonClass: "btn-danger",
                confirmButtonText: "Yes, delete it!",
                closeOnConfirm: false
            },
            function () {
               window.location.href="delete-item?id="+itemId;
            });
    }
</script>