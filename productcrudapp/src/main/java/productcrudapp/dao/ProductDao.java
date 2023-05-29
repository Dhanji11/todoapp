package productcrudapp.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import productcrudapp.model.Product;

@Component
public class ProductDao {
	// is is used to work with database
	// autowired ---> here spring automatically create and manage object
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	// create
	@Transactional
	public void createProduct(Product product)
	{
		this.hibernateTemplate.saveOrUpdate(product);
	}
	
	//get all products
	public List<Product> getProducts()
	{
	  List<Product>products=this.hibernateTemplate.loadAll(Product.class);
	  return products;
	}
	
	// delete single product
	@Transactional
	public void deleteProduct(int pid)
	{
		//here ht not taken direct id it will taken whole product
		Product p=this.hibernateTemplate.load(Product.class,pid);
		this.hibernateTemplate.delete(p);
	}
    // get the single product
	public Product getProduct(int pid)
	{
		return this.hibernateTemplate.get(Product.class,pid);
	}
}
