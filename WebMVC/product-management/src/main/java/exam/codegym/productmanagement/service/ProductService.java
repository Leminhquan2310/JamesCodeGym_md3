package exam.codegym.productmanagement.service;

import exam.codegym.productmanagement.model.Product;

import java.util.List;

public interface ProductService {
    List<Product> findAll();

    void create(Product product);

    Product update(int id, Product product);

    void delete(int id);

    Product findOne(int id);

    List<Product> findByName(String name);

    int getSize();
}
