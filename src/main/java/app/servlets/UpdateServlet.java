package app.servlets;

import app.entities.DataBase;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UpdateServlet", value = "/UpdateServlet")
public class UpdateServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/update.jsp");
        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String old_username = req.getParameter("old_username");
        String old_password = req.getParameter("old_password");

        String new_username = req.getParameter("new_username");
        String new_password = req.getParameter("new_password");

        DataBase.updateUserData(old_username, old_password, new_username, new_password);

        req.setAttribute("old_username", old_username);
        req.setAttribute("old_password", old_password);
        req.setAttribute("new_username", new_username);
        req.setAttribute("new_password", new_password);
        doGet(req, resp);
    }
}
