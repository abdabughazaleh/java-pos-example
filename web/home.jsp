<%--
  Created by IntelliJ IDEA.
  User: abdab
  Date: 3/5/2022
  Time: 8:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="layout/header.jsp"/>

<div class="container">

    <div class="main-box" style="margin-top:100px;">
        <h1>Point of Sale</h1>

        <div class="form-group">
            <label for="barcode">Barcode : </label>
            <input type="text" name="barcode" id="barcode" class="form-control">
        </div>
        <hr>
        <table class="table">
            <thead>
            <tr>
                <th>Barcode</th>
                <th>Item Name</th>
                <th>Price</th>
                <th>Delete</th>
            </tr>
            </thead>
            <tbody id="list">

            </tbody>
            <tfoot>
            <tr>
                <th colspan="4">Total : <span id="total"></span></th>
            </tr>
            </tfoot>
        </table>
    </div>

</div>
<!-- /.container -->
<jsp:include page="layout/footer.jsp"/>

<script>


    $('#barcode').keypress(function (e) {
        var key = e.which;
        if (key == 13)  // the enter key code
        {
            onEnter();
        }
    });

    let total = 0;

    function onEnter() {
        let barcode = $("#barcode").val();

        $.ajax({
            type: 'GET',
            url: 'http://localhost:8066/pos/get-item?value=' + barcode,
            dataType: 'json',
            success: function (resp) {
                if (resp.item == 'nothing') {
                    swal({
                        title: "Item not exist.",
                        type: "warning",
                        showCancelButton: true,
                        confirmButtonClass: 'btn-warning',
                        confirmButtonText: 'Ok!'
                    });
                } else {
                    total += resp.item.itemPrice;
                    $("#list").append("<tr id='item-row-" + resp.item.itemId + "'>\n" +
                        "                <td>" + resp.item.itemBarcode + "</td>\n" +
                        "                <td>" + resp.item.itemName + "</td>\n" +
                        "                <td>" + resp.item.itemPrice + "</td>\n" +
                        "                <td>\n" +
                        "                    <button onclick='deleteItemFromList(" + resp.item.itemId + "," + resp.item.itemPrice + " )' class=\"btn btn-danger btn-xs\">Delete</button>\n" +
                        "                </td>\n" +
                        "            </tr>");

                    $("#total").html(total);
                }
            }
        });

        $("#barcode").val('');
    }

    function deleteItemFromList(itemId, itemPrice) {
        $("#item-row-" + itemId).remove();
        total -= itemPrice;
        $("#total").html(total);
    }

</script>
