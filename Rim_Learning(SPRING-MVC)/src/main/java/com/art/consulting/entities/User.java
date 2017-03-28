package com.art.consulting.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;



//@Entity
//@Inheritance(strategy =InheritanceType.TABLE_PER_CLASS)  
public  abstract  class User  implements Serializable  {
	
	
	  @Id
	//@GeneratedValue(strategy=GenerationType.AUTO) 
/*   
 * with  TABLE_PER_CLASS we can't use GenerationType.AUTO ,i try to use 
 * GenerationType.CLASS but the field iduser no longer auto_increment 
 * 
 * 
 * */
	
	//  @Column(unique = true, nullable = false)
	  private int idUser;
	  
	  private String firstName ;
	  private String lastName;
	  private String email;
	  private String urlPhoto;
	  private String password ;
	  private String section ;
	  
	  public User() {}
	  
	public User(int idUser, String firstName, String lastName, String email, String urlPhoto, String password,
			String section) {
		
		this.idUser = idUser;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.urlPhoto = urlPhoto;
		this.password = password;
		this.section = section;
	}
	public int getIdUser() {
		return idUser;
	}
	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUrlPhoto() {
		return urlPhoto;
	}
	public void setUrlPhoto(String urlPhoto) {
		this.urlPhoto = urlPhoto;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getSection() {
		return section;
	}
	public void setSection(String section) {
		this.section = section;
	}
	  
	  
	  
	

}
