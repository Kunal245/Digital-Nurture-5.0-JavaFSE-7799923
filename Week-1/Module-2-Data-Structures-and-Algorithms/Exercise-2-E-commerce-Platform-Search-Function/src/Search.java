public class Search {
    
    public static void linearSearch(Product[] products, String target){

        for(Product p : products){
            if(p.productName.equals(target)){
                System.out.println("Linear Search Found: " + p.productName);
            }
        }

        System.out.println("Linear Search: Product not found !!");
    }

    public static void binarySearch(Product[] products, String target){

        int start = 0;
        int end = products.length -1;

        while(start <= end){

            int mid = start + (end-start) / 2;
            int cmp = products[mid].productName.compareTo(target);

            if(cmp == 0){
                System.out.println("Binary Search Found: " + products[mid].productName);
                break;
            } else if(cmp < 0) {
                start = mid + 1;
            } else {
                end = mid - 1;
            }
        }

        System.out.println("Binary Search: Product not found !!");
    }
}
