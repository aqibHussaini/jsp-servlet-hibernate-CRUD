package com.Entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Contact {
@Id	
@GeneratedValue(strategy=GenerationType.AUTO)
private int Id;	
public Contact() {
	super();
	// TODO Auto-generated constructor stub
}
public Contact(int id, String name, String email, String phone, String facebookid, String instaid, String twitterid,
		String counrty, String city, String province, String about) {
	super();
	Id = id;
	this.name = name;
	this.email = email;
	this.phone = phone;
	this.facebookid = facebookid;
	this.instaid = instaid;
	this.twitterid = twitterid;
	this.counrty = counrty;
	this.city = city;
	this.province = province;
	this.about = about;
}
public int getId() {
	return Id;
}
public void setId(int id) {
	Id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}
public String getFacebookid() {
	return facebookid;
}
public void setFacebookid(String facebookid) {
	this.facebookid = facebookid;
}
public String getInstaid() {
	return instaid;
}
public void setInstaid(String instaid) {
	this.instaid = instaid;
}
public String getTwitterid() {
	return twitterid;
}
public void setTwitterid(String twitterid) {
	this.twitterid = twitterid;
}
public String getCounrty() {
	return counrty;
}
public void setCounrty(String counrty) {
	this.counrty = counrty;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
public String getProvince() {
	return province;
}
public void setProvince(String province) {
	this.province = province;
}
public String getAbout() {
	return about;
}
public void setAbout(String about) {
	this.about = about;
}
@Override
public String toString() {
	return "Contact [Id=" + Id + ", name=" + name + ", email=" + email + ", phone=" + phone + ", facebookid="
			+ facebookid + ", instaid=" + instaid + ", twitterid=" + twitterid + ", counrty=" + counrty + ", city="
			+ city + ", province=" + province + ", about=" + about + "]";
}
private String name;
private String email,phone,facebookid,instaid,twitterid,counrty,city,province,about;
}