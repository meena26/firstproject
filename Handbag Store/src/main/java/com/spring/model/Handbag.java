package com.spring.model;
import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Min;

import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.hibernate.annotations.Columns;
import org.hibernate.annotations.Generated;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;
/**
 * @author MEENA
 *
 */
@Entity
@Table(name="handbag")
public class Handbag implements Serializable{//book has category
@Id
@Column(name="id")
@GeneratedValue(strategy=GenerationType.AUTO)
private int id;
@NotEmpty(message="Title cannot be empty")

private String title;

@NotEmpty(message="supplier cannot be empty")
@Column(name="supplier")
private String supplier;

//private String author;
@Min(value=100,message="Minimum value should be greater than 100")
private double price;
@ManyToOne
@JoinColumn(name="cid")// Foreign key column in BookApp table
private Category category;

@Transient
private MultipartFile handbagImage;

public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getSupplier() {
	return supplier;
}
public void setSupplier(String supplier) {
	this.supplier = supplier;
}
public double getPrice() {
	return price;
}
public void setPrice(double price) {
	this.price = price;
}
public Category getCategory() {
	return category;
}
public void setCategory(Category category) {
	this.category = category;
}
/*public String getAuthor() {
	return author;
}
public void setAuthor(String author) {
	this.author = author;
}*/
public MultipartFile getHandbagImage() {
	return handbagImage;
}
public void setHandbagImage(MultipartFile handbagImage) {
	this.handbagImage = handbagImage;
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


	


