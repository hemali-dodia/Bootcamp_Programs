package com.addressbook.model;
public class Person
{
	private String name;

	private String city;

	private String address;

	private String state;

	private int zip;

	private int ph_num;

	public void setName(String name){
		this.name=name;
	}
	public void setCity(String city){
		this.city=city;
	}
	public void setAddress(String Address){
		this.address=address;
	}
	public void setState(String State){
		this.state=state;
	}
	public void setZip(int zip){
		this.zip=zip;
	}
	public void setPh_num(int ph_num){
		this.ph_num=ph_num;
	}

	public String getName(){
		return this.name;
	}
	public String getCity(){
		return this.city;
	}
	public String getAddress(){
		return this.address;
	}
	public String getState(){
		return this.state;
	}
	public int getZip(){
		return this.zip;
	}
	public int getPh_num(){
		return this.ph_num;
	}
}
