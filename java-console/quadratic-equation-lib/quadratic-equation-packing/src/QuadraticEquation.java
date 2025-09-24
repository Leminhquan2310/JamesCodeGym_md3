public class QuadraticEquation {
    public static String execute(int a, int b, int c) {
        // Trường hợp a = 0 => phương trình bậc 1
        if (a == 0) {
            if (b == 0) {
                if (c == 0) {
                    return "Phương trình vô số nghiệm";
                } else {
                    return "Phương trình vô nghiệm";
                }
            } else {
                double x = -c / b;
                return "Phương trình có nghiệm: x = " + x;
            }
        } else {
            double delta = b * b - 4 * a * c;
            if (delta < 0) {
                return "Phương trình vô nghiệm";
            } else if (delta == 0) {
                double x = -b / (2 * a);
                return "Phương trình có nghiệm kép: x = " + x;
            } else {
                double x1 = (-b + Math.sqrt(delta)) / (2 * a);
                double x2 = (-b - Math.sqrt(delta)) / (2 * a);
                return "Phương trình có 2 nghiệm phân biệt:" + " x1 = " + x1 + ", x2 = " + x2;
            }
        }

    }
}
