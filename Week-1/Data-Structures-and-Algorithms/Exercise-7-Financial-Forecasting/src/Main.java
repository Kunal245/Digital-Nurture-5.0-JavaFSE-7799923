import java.util.Scanner;

public class Main {
    

    public static double financialForecast(double principal, double rate, int years){

        if(years == 0){
            return principal;
        }

        return financialForecast(principal, rate, years - 1) * (1 + rate/100);
    }

    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);

        System.out.println("Enter principal: ");
        double principal = sc.nextDouble();
        
        System.out.println("Enter rate(in %): ");
        double rate = sc.nextDouble();

        System.out.println("Enter years: ");
        int years = sc.nextInt();

        double result = financialForecast(principal, rate, years);

        System.out.println("Future value is: " + result);
    }


}
