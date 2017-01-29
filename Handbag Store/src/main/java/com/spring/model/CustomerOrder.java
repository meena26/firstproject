package com.spring.model;
import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;

@Entity
@Table(name="customerorder")
public class CustomerOrder implements Serializable{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
private int customerOrderId;
	@OneToOne
	@JoinColumn(name="cartid")
private Cart cart;
	@OneToOne
	@JoinColumn(name="customerid")
private Customer customer;
	@OneToOne
	@JoinColumn(name="billingAddressId")
private BillingAddress billingAddress;
	@OneToOne
	@JoinColumn(name="shippingAddressId")
private ShippingAddress shippingAddress;
/*@oneToone
@JoinColumn(name="cartId")
pivate Cart cart;
	*/
public int getCustomerOrderId() {
	return customerOrderId;
}
public void setCustomerOrderId(int customerOrderId) {
	this.customerOrderId = customerOrderId;
}
public Cart getCart() {
	return cart;
}
public void setCart(Cart cart) {
	this.cart = cart;
}
public Customer getCustomer() {
	return customer;
}
public void setCustomer(Customer customer) {
	this.customer = customer;
}
public BillingAddress getBillingAddress() {
	return billingAddress;
}
public void setBillingAddress(BillingAddress billingAddress) {
	this.billingAddress = billingAddress;
}
public ShippingAddress getShippingAddress() {
	return shippingAddress;
}
public void setShippingAddress(ShippingAddress shippingAddress) {
	this.shippingAddress = shippingAddress;
}

/*@Override 
public String toString(){
	return ToStringBuilder.reflectionToString(this);
}
@Override 
public boolean equals(Object obj){
	return EqualsBuilder.reflectionEquals(this,obj);
}
@Override 
public int hashCode(){
	return HashCodeBuilder.reflectionHashCode(this);
}*/
}

