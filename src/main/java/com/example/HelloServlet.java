package com.example;

import java.io.IOException;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

public class HelloServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setAttribute("msg", "Hello from Servlet running in Codespaces!");
        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }
}
