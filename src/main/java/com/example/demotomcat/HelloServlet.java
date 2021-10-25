package com.example.demotomcat;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "du ramte servletten!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        String fornavn = request.getParameter("fname");
        String efternavn = request.getParameter("lname");

        // Hello
        PrintWriter out = response.getWriter();
        out.println("<html><body>");

        out.write("<h1>"+ "du ramte min get metode" + "</h1>");
        out.println("fornavnet var " + fornavn+ "</br>");
        out.println("efternavnet var " + efternavn + "</br>");
//        out.println("<h1>" + message + "</h1>");
//        out.println("<h2>" +  " jeg elsker nisseskum" + "</h2>");

        out.println("</body></html>");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        super.doPost(req, resp);
        resp.setContentType("text/html");
        String fornavn = req.getParameter("fname");
        String efternavn = req.getParameter("lname");
        PrintWriter out = resp.getWriter();
        out.println("<html><body>");

        out.write("<h1>"+ "du ramte min post metode" + "</h1>");
        out.println("fornavnet var " + fornavn+ "</br>");
        out.println("efternavnet var " + efternavn + "</br>");

        out.println("</body></html>");
    }

    public void destroy() {
    }
}