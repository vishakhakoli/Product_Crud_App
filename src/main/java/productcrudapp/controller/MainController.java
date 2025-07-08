package productcrudapp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import productcrudapp.dao.ProductDao;
import productcrudapp.model.Product;

@Controller
public class MainController {
	
	@Autowired
	private ProductDao productDao;
	
	//Home page
	@RequestMapping("/")
	public String home(Model m)
	{
		List<Product> products = this.productDao.getAllProducts();
		m.addAttribute("products", products);
		return "index";
	}
	
	@RequestMapping("addproduct")
	public String addProduct(Model m)
	{
		m.addAttribute("title", "Add Product");
		return "add_product";
	}
	
	@RequestMapping(path="/save-product" ,method=RequestMethod.POST)
	public RedirectView saveProduct(@ModelAttribute("product") Product product,HttpServletRequest request)
	{
		RedirectView redirectView = new RedirectView();
		this.productDao.createProduct(product);
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
	}
	
	@RequestMapping("delete/{productId}")
	public RedirectView deleteProduct(@PathVariable("productId") int productId,HttpServletRequest request)
	{
		RedirectView redirectView = new RedirectView();
		this.productDao.deleteProduct(productId);
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
	}
	
	@RequestMapping("update/{productId}")
	public String editProduct(@PathVariable("productId") int productId,Model m)
	{
		Product product = this.productDao.getProduct(productId);
		m.addAttribute("product", product);
		return "edit_product";
	}
	
	/*
	 * @RequestMapping("edit/{productId}") public RedirectView
	 * updateProduct(@ModelAttribute("product") Product product,HttpServletRequest
	 * request) { RedirectView redirectView = new RedirectView();
	 * this.productDao.updateProduct(product);
	 * redirectView.setUrl(request.getContextPath()+"/"); return redirectView; }
	 */
	

}
