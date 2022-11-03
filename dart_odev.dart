void main() {
  
  List<Product> products = [];
  
  addProduct(products,Product(name: "tshırt", brand: "gucci", size:"XL", color:"Red", barcode:"A123E"));
  addProduct(products,Product(name: "sweatshirt", brand: "prada", size:"L", color:"green", barcode:"E23A6"));
  addProduct(products,Product(name: "jean", brand: "armani", size:"M", color:"blue", barcode:"U256A"));
  
  listProducts(products);
  
  updateProduct(products,Product(name: "jean", brand: "armani", size:"S", color:"gri", barcode:"U256A"),"U256A",listProducts);
  
  deleteProduct(products,"E23A6",listProducts);
}

class Product{
   String name;
   String brand;
   String size;
   String color;
   String barcode;

   Product({required this.name, required this.brand, required this.size, required this.color, required this.barcode});
}

listProducts(List products) {
   for( var i = 0 ; i < products.length; i++ ) { 
    Product product = products[i];
    print('Name: ${product.name}' + ' - Marka: ${product.brand}' + ' - Boyut: ${product.size}' + ' - Renk: ${product.color}' + ' - Barcode: ${product.barcode}');
  }
}

addProduct(List products, Product product) {
  products.add(product);
}

updateProduct(List products,Product product,String prevBarcode,listProducts) {
  products.removeWhere((item) => item.barcode == prevBarcode);
  products.add(product);
  print('${prevBarcode}' + ' barkod numaralı ürününüz güncellendi.');
  listProducts(products);
}

deleteProduct(List products,String deleteBarcode,listProducts) {
  products.removeWhere((item) => item.barcode == deleteBarcode);
  print('${deleteBarcode}' + ' barkod numaralı ürününüz silindi.');
  listProducts(products);
}
