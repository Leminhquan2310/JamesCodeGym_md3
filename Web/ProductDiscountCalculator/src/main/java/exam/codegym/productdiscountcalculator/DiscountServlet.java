package exam.codegym.productdiscountcalculator;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "DiscountServlet", urlPatterns = "/display-discount")
public class DiscountServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.getWriter().println("<h1>Hello from doGet()</h1>");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String desc = req.getParameter("description");
        double price = Double.parseDouble(req.getParameter("list-price"));
        int discount = Integer.parseInt(req.getParameter("discount-percent"));
        double discountAmount = price * discount * 0.01;

        PrintWriter writer = resp.getWriter();
        writer.println("<html>");
        writer.println("<h1>Product Description: " + desc + "</h1>");
        writer.println("<h1>Discount Amount: " + discountAmount+ "</h1>");
        writer.println("<h1>Discount Price: " + (price - discountAmount+ "</h1>"));
        writer.println("</html>");
    }
}
