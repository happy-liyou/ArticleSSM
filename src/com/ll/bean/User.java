package com.ll.bean;

public class User {
	private int user_Id;
	private String user_Name;
	private String user_Password;
	private String user_Grade;
	private String user_Heard;
	private String user_Sex;
	private String user_Type;
	private String user_Phone;
	private String user_Email;
	private String user_Contact;

	public User() {
		super();
	}

	public User(int user_Id, String user_Name, String user_Password, String user_Grade, String user_Heard,
			String user_Sex, String user_Type, String user_Phone, String user_Email, String user_Contact) {
		super();
		this.user_Id = user_Id;
		this.user_Name = user_Name;
		this.user_Password = user_Password;
		this.user_Grade = user_Grade;
		this.user_Heard = user_Heard;
		this.user_Sex = user_Sex;
		this.user_Type = user_Type;
		this.user_Phone = user_Phone;
		this.user_Email = user_Email;
		this.user_Contact = user_Contact;
	}

	public int getUser_Id() {
		return user_Id;
	}

	public void setUser_Id(int user_Id) {
		this.user_Id = user_Id;
	}

	public String getUser_Name() {
		return user_Name;
	}

	public void setUser_Name(String user_Name) {
		this.user_Name = user_Name;
	}

	public String getUser_Password() {
		return user_Password;
	}

	public void setUser_Password(String user_Password) {
		this.user_Password = user_Password;
	}

	public String getUser_Grade() {
		return user_Grade;
	}

	public void setUser_Grade(String user_Grade) {
		this.user_Grade = user_Grade;
	}

	public String getUser_Heard() {
		return user_Heard;
	}

	public void setUser_Heard(String user_Heard) {
		this.user_Heard = user_Heard;
	}

	public String getUser_Sex() {
		return user_Sex;
	}

	public void setUser_Sex(String user_Sex) {
		this.user_Sex = user_Sex;
	}

	public String getUser_Type() {
		return user_Type;
	}

	public void setUser_Type(String user_Type) {
		this.user_Type = user_Type;
	}

	public String getUser_Phone() {
		return user_Phone;
	}

	public void setUser_Phone(String user_Phone) {
		this.user_Phone = user_Phone;
	}

	public String getUser_Email() {
		return user_Email;
	}

	public void setUser_Email(String user_Email) {
		this.user_Email = user_Email;
	}

	public String getUser_Contact() {
		return user_Contact;
	}

	public void setUser_Contact(String user_Contact) {
		this.user_Contact = user_Contact;
	}

	@Override
	public String toString() {
		return "User [user_Id=" + user_Id + ", user_Name=" + user_Name + ", user_Password=" + user_Password
				+ ", user_Grade=" + user_Grade + ", user_Heard=" + user_Heard + ", user_Sex=" + user_Sex
				+ ", user_Type=" + user_Type + ", user_Phone=" + user_Phone + ", user_Email=" + user_Email
				+ ", user_Contact=" + user_Contact + "]";
	}

}
