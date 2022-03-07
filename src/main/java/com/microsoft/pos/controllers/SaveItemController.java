package com.microsoft.pos.controllers;

import com.microsoft.pos.config.database.DBManager;
import com.microsoft.pos.config.database.DBWorker;
import com.microsoft.pos.dao.Item;
import com.microsoft.pos.models.ItemModel;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/save-item")
public class SaveItemController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String itemName = req.getParameter("item_name");
        String barcode = req.getParameter("barcode");
        Double price = Double.parseDouble(req.getParameter("price"));
        Item item = new Item();
        item.setItemBarcode(barcode);
        item.setPrice(price);
        item.setItemName(itemName);

        ItemModel model = new ItemModel();
        model.saveItem(item);

        resp.sendRedirect(req.getContextPath() + "/items");
    }
}
