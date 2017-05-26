package com.niit.entertainment_backend.model;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name="ProductDetails")
public class Telemodel implements Serializable
{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue
	@Column(name="prodId")
	private String prodId;
    @Column(name="prodBrand")	
	private String prodBrand;
    @Column(name="prodName")
	private String prodName;
    @Column(name="prodDescription")
	private String prodDescription;
    @Column(name="prodPrice")
	private int prodPrice;
    @Column(name="prodQuantity")
	private int prodQuantity;
    @Column(name="prodCategory")
	private String prodCategory;
    @Column(name="prodSupplier")
	private String prodSupplier;
	
	public String getProdId()
    {
    	return prodId;
    }
    
    //Getter and Setter methods for Product Brand
    public void setProdBrand(String prodBrand)
	{
		this.prodBrand=prodBrand;
	}

    public String getProdBrand()
    {
    	return prodBrand;
    }
    
    //Getter and Setter methods for Product Name
    public void setProdName(String prodName)
	{
		this.prodName=prodName;
	}
    
    public String getProdName()
    {
    	return prodName;
    }
    
    //Getter and Setter methods for Product Description
    
    public void setProdDescription(String prodDescription)
	{
		this.prodDescription=prodDescription;
	}
    
    public String getProdDescription()
    {
    	return prodDescription;
    }
    
    //Getter and Setter methods for Product Price
    public void setProdPrice(int prodPrice)
	{
		this.prodPrice=prodPrice;
	}
    
    public int getProdPrice()
    {
    	return prodPrice;
    }
    
    //Getter and Setter methods for Product Quantity
    public void setProdQuantity(int prodQuantity)
	{
		this.prodQuantity=prodQuantity;
	}
    
    public int getProdQuantity()
    {
    	return prodQuantity;
    }
    
    //Getter and Setter methods for Product Category
    public void setProdCategory(String prodCategory)
	{
		this.prodCategory=prodCategory;
	}
    
    public String getProdCategory()
    {
    	return prodCategory;
    }
    
    //Getter and Setter methods for Product Supplier
    public void setProdSupplier(String prodSupplier)
	{
		this.prodSupplier=prodSupplier;
	}
    
    public String getProdSupplier()
    {
    	return prodSupplier;
    }
}





























/*import java.io.Serializable;
import java.util.List;
import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "television")

public class Telemodel implements Serializable  {
	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(name = "pid")
	private int pid;
	
	
	@Column(name = "pbrand")
	private String pbrand;
	
	
	@Column(name = "pname")
	private String pname;
	
	
	@Column(name = "pdiscription")
	private String pdiscription;
	
	
	@Column(name = "pprice")
	private int pprice;
	
	
	@Column(name = "pquantity")
	private int pquantity;
	
	
	@Column(name = "pcategory")
	private String pcategory;
	
	
	@Column(name = "psupplier")
	private String psupplier;
	
	
	@Column(name = "pimg")
	private String pimg;
	//private List<Part> pimg;
	
	
	
	
	
	
	public Telemodel(int pid, String pbrand, String pname, String pdiscription, int pprice, int pquantity, String pcategory,
			String psupplier, String pimg) {
		super();
		this.pid = pid;
		this.pbrand = pbrand;
		this.pname = pname;
		this.pdiscription = pdiscription;
		this.pprice = pprice;
		this.pquantity = pquantity;
		this.pcategory = pcategory;
		this.psupplier = psupplier;
		this.pimg = pimg;
	}
	
	
	
	
	
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPbrand() {
		return pbrand;
	}
	public void setPbrand(String pbrand) {
		this.pbrand = pbrand;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPdiscription() {
		return pdiscription;
	}
	public void setPdiscription(String pdiscription) {
		this.pdiscription = pdiscription;
	}
	public int getPprice() {
		return pprice;
	}
	public void setPprice(int pprice) {
		this.pprice = pprice;
	}
	public int getPquantity() {
		return pquantity;
	}
	public void setPquantity(int pquantity) {
		this.pquantity = pquantity;
	}
	public String getpcategory() {
		return pcategory;
	}
	public void setpcategory(String pcategory) {
		this.pcategory = pcategory;
	}
	public String getPsupplier() {
		return psupplier;
	}
	public void setPsupplier(String psupplier) {
		this.psupplier = psupplier;
	}
	public String getPimg() {
		return pimg;
	}
	public void setPimg(String pimg) {
		this.pimg = pimg;
	}
	public String toString(){
		return this.pid + " " + this.pbrand + " " + this.pname + " " + this.pdiscription + " " + this.pprice + " " + this.pquantity + " " + this.pcategory + " " + this.psupplier + " " + this.pimg;
	}
	

}
*/