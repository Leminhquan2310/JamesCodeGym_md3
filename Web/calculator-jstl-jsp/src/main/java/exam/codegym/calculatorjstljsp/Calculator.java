package exam.codegym.calculatorjstljsp;

public class Calculator {
    private static final String ADDITION = "add";
    private static final String SUBTRACTION = "sub";
    private static final String MULTIPLICATION = "mul";
    private static final String DIVISION = "div";
    private double firstNumber;
    private double secondNumber;
    private String operator;

    public Calculator(double firstNumber, double secondNumber, String operator) {
        this.firstNumber = firstNumber;
        this.secondNumber = secondNumber;
        this.operator = operator;
    }

    public double calculator() {
        switch (this.operator) {
            case ADDITION:
                return this.firstNumber + this.secondNumber;
            case SUBTRACTION:
                return this.firstNumber - this.secondNumber;
            case MULTIPLICATION:
                return this.firstNumber * this.secondNumber;
            case DIVISION:
                if (this.secondNumber == 0) {
                    throw new ArithmeticException("Division by zero is not allowed");
                }
                return this.firstNumber / this.secondNumber;
            default:
                throw new IllegalArgumentException("Invalid operator: " + operator);
        }
    }

    public String getOperatorSymbol() {
        switch (this.operator) {
            case "add":
                return "+";
            case "sub":
                return "-";
            case "mul":
                return "*";
            case "div":
                return "/";
            default:
                return "?";
        }
    }
}
