public class Test {
    public static void main(String[] args) {
        
        Product[] products = {
            new Product(0, "Shoes", "Fashion"),
            new Product(1, "Watch", "Fashion"),
            new Product(2, "Laptop", "Electronics"),
            new Product(3, "Phone", "Electronics"),
            new Product(4, "Kaju Katli", "Sweet")
        };

        Search.linearSearch(products, "Phone");
        Search.binarySearch(products, "Phone");
    }
}
