package com.microsoft.pos.controllers;

import com.microsoft.pos.models.ItemModel;
import org.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

@WebServlet("/get-item")
public class GetItemController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String value = req.getParameter("value");
        ItemModel model = new ItemModel();
        JSONObject json = new JSONObject();
        HashMap<String, Object> m = model.getItemBy("item_barcode", value);
        if (m.get("itemId") == null)
            json.put("item", "nothing");
        else
            json.put("item", m);
        //json.append("item", model.getItemBy("item_barcode", value));
        PrintWriter out = resp.getWriter();
        out.print(json);
    }
}
