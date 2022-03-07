package com.microsoft.pos.controllers;

import com.microsoft.pos.models.ItemModel;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/items")
public class ViewItemsController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("items.jsp");
        ItemModel model = new ItemModel();
        req.setAttribute("items", model.getAllItems());
        System.out.println(model.getAllItems());
        dispatcher.forward(req, resp);
    }
}
