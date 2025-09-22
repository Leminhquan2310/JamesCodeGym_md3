package exam.codegym.productmanagement.service;

import exam.codegym.productmanagement.model.Product;

import java.util.*;

public class ProductServiceImpl implements ProductService {
    private static Map<Integer, Product> products;

    static {
        products = new HashMap<>();
        products.put(1, new Product(1, "Iphone 15", 25000, "Điện thoại Apple cao cấp", "Apple"));
        products.put(2, new Product(2, "Samsung Galaxy S24", 22000, "Flagship mới nhất của Samsung", "Samsung"));
        products.put(3, new Product(3, "MacBook Pro", 45000, "Laptop hiệu năng cao cho dân lập trình", "Apple"));
        products.put(4, new Product(4, "Dell XPS 13", 35000, "Ultrabook mỏng nhẹ, cấu hình mạnh", "Dell"));
        products.put(5, new Product(5, "Sony WH-1000XM5", 8000, "Tai nghe chống ồn đỉnh cao", "Sony"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void create(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public Product update(int id, Product product) {
        return products.put(id, product);
    }

    @Override
    public void delete(int id) {
        products.remove(id);
    }

    @Override
    public Product findOne(int id) {
        return products.get(id);
    }

    @Override
    public List<Product> findByName(String name) {
        return products.values().stream()
                .filter(p -> p.getName().toLowerCase().contains(name.toLowerCase()))
                .toList();
    }

    @Override
    public int getSize() {
        return products.size();
    }
}
