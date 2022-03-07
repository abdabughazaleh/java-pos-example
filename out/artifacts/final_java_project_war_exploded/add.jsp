<%--
  Created by IntelliJ IDEA.
  User: abdab
  Date: 3/5/2022
  Time: 8:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="layout/header.jsp" />


<div class="container">


    <div class="main-box" style="margin-top:100px;">
        <div class="row">
            <form action="save-item" method="post">
                <div class="col-sm-8">
                    <div class="form-group">
                        <label for="itemName">Item Name</label>
                        <input type="text" name="item_name" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="barcode">Barcode</label>
                        <input type="text" name="barcode" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="price">Price</label>
                        <input type="text" name="price" class="form-control">
                    </div>
                    <div class="form-group">
                        <button class="btn btn-primary">Add Item</button>
                    </div>

                </div>
            </form>
        </div>
    </div>

</div><!-- /.container -->


<jsp:include page="layout/footer.jsp" />
