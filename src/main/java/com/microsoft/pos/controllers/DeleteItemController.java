package com.microsoft.pos.controllers;

import com.microsoft.pos.models.ItemModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/delete-item")
public class DeleteItemController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer id = Integer.parseInt(req.getParameter("id"));
        ItemModel model = new ItemModel();
        model.deleteItem(id);
        resp.sendRedirect(req.getContextPath() + "/items");
    }
}
