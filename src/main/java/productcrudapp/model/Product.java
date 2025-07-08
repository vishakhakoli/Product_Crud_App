package productcrudapp.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Product {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer prodId;
	private String prodName;
	private String prodDescription;
	private long prodPrice;
	

	public Integer getProdId() {
	    return prodId;
	}

	public void setProdId(Integer prodId) {
	    this.prodId = prodId;
	}

	public String getProdName() {
		return prodName;
	}
	public void setProdName(String prodName) {
		this.prodName = prodName;
	}
	public String getProdDescription() {
		return prodDescription;
	}
	public void setProdDescription(String prodDescription) {
		this.prodDescription = prodDescription;
	}
	public long getProdPrice() {
		return prodPrice;
	}
	public void setProdPrice(long prodPrice) {
		this.prodPrice = prodPrice;
	}
	
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Product(Integer prodId, String prodName, String prodDescription, long prodPrice) {
		super();
		this.prodId = prodId;
		this.prodName = prodName;
		this.prodDescription = prodDescription;
		this.prodPrice = prodPrice;
	}
	@Override
	public String toString() {
		return "Product [prodId=" + prodId + ", prodName=" + prodName + ", prodDescription=" + prodDescription
				+ ", prodPrice=" + prodPrice + "]";
	}
	

}
