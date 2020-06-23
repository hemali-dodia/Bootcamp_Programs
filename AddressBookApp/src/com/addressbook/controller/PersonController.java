package com.addressbook.controller;
import com.addressbook.model.Person;
public class PersonController{
	public static void main(String... args){
		Person person = new Person();
		person.setName("hemali dodia");
		System.out.println("person name is : "+person.getName());
		person.setCity("mumbai");
	}
}
