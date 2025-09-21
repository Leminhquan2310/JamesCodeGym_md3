package exam.codegym.calculatorjstljsp;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CalculatorServlet", urlPatterns = "/calculate")
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        double firstNumber = Double.parseDouble(req.getParameter("first"));
        double secondNumber = Double.parseDouble(req.getParameter("second"));
        String operator = req.getParameter("operator");

        Calculator calculator = new Calculator(firstNumber, secondNumber, operator);

        PrintWriter writer = resp.getWriter();
        writer.println("<html>");
        try {
            double result = calculator.calculator();
            writer.println("<h1>Result: </h1>");
            writer.println(firstNumber + " " + calculator.getOperatorSymbol() + " " + secondNumber + " = " + result);
        } catch (RuntimeException e) {
            writer.println("<h1>Error: " + e.getMessage() + "</h1>");
        } finally {
            writer.println("</html>");
        }
    }
}
