package com.microsoft.pos.controllers;

import com.microsoft.pos.dao.Item;
import com.microsoft.pos.dao.User;
import com.microsoft.pos.models.ItemModel;
import com.microsoft.pos.models.UserModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Optional;

@WebServlet("/sign-in")
public class LoginController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        UserModel userModel = new UserModel();

        Optional<User> o = Optional.ofNullable(userModel.login(username, password));
        if (o.isPresent()) {
            HttpSession session = req.getSession();
            // session.setAttribute("user", o.get());
            session.setAttribute("username", o.get().getUsername());
            resp.sendRedirect(req.getContextPath() + "/");
        } else {
            resp.sendRedirect(req.getContextPath() + "/login?type=error");
        }
    }
}