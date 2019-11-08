package main;

import javax.annotation.Generated;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Item {

	@Id
	@GeneratedValue
	private long id;
	
	private int id1;
	private String name;
	private String desp;
	private int price;
	private int quantity;
	
	
	
	
	public long getId() {
		return id;
	}




	public void setId(long id) {
		this.id = id;
	}




	public int getId1() {
		return id1;
	}




	public void setId1(int id1) {
		this.id1 = id1;
	}




	public String getName() {
		return name;
	}




	public void setName(String name) {
		this.name = name;
	}




	public String getDesp() {
		return desp;
	}




	public void setDesp(String desp) {
		this.desp = desp;
	}




	public int getPrice() {
		return price;
	}




	public void setPrice(int price) {
		this.price = price;
	}




	public int getQuantity() {
		return quantity;
	}




	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}




	public Item(int id1, String name, String desp, int price, int quantity) {
		super();
		this.id1 = id1;
		this.name = name;
		this.desp = desp;
		this.price = price;
		this.quantity = quantity;
	}




	public Item() {
		// TODO Auto-generated constructor stub
	}

}
