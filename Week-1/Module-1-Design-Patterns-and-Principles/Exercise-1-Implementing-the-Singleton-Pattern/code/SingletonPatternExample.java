package code;
public class SingletonPatternExample {
    

    public static void main(String[] args) {
        
        Logger logger1 = Logger.getInstance();
        Logger logger2 = Logger.getInstance();

        logger1.log("First log message");
        logger2.log("First log message");

        System.out.println("logger1 hashcode: "+ logger1.hashCode());
        System.out.println("logger1 hashcode: "+ logger2.hashCode());

        if(logger1 == logger2){
            System.out.println("Only one logger instance exist !");
        }else {
            System.out.println("Multiple logger instance exist");
        }
    }
}
