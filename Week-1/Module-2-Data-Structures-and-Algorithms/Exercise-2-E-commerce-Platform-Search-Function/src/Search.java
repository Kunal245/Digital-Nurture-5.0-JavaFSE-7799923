public class Search {
    
    public static void linearSearch(Product[] products, String target){

        for(Product p : products){
            if(p.productName.equals(target)){
                System.out.println("Linear Search: " + p);
            }
        }

        System.out.println("Linear Search: Product not found");
    }
}
