package org.web.admin;

public class Product {
    protected int id;
    protected String name;
    protected float price;
    protected String description;
    protected String category;
   //protected enum category{laptops,phones,cameras, accessories;};
   //protected category catego;
    
 
    public Product() {
    }
 
    public Product(int id) {
        this.id = id;
    }
 
    public Product(int id, String name, float price, String description, String category) {
        this(name, price, description, category);
        this.id = id;
    }
     
    public Product(String name, float price, String description, String category) {
        this.name = name;
        this.price = price;
        this.description = description;
        this.category=category;
    }
 
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}
	
	
}
