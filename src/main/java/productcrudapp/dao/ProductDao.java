package productcrudapp.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import productcrudapp.model.Product;

@Component
public class ProductDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	//create new product
	@Transactional
	public void  createProduct(Product product)
	{
		this.hibernateTemplate.saveOrUpdate(product);
	}
	
	//get all product
	public List<Product> getAllProducts()
	{
		List<Product> product=this.hibernateTemplate.loadAll(Product.class);
		return   product;
	}
	
	//delete the single product
	@Transactional
	public void deleteProduct(Integer pId)
	{
		Product product =this.hibernateTemplate.load(Product.class, pId);
		this.hibernateTemplate.delete(product);
		
	}
	
	//get single product
	public Product getProduct(Integer pId)
	{
		Product product =this.hibernateTemplate.get(Product.class, pId);
		return product;
	}
	
	//update product
	@Transactional
	public void updateProduct(Product product)
	{
		
		this.hibernateTemplate.update(product);
		
	}

}
