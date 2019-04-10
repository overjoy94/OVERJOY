package com.user.db;

import org.springframework.stereotype.Repository;

@Repository
public class UserVO {
	String username;
	String userid;
	String password;
	String email;
	String password_q;
	String password_a;
	String phone;
	String phone_zip;
	String postcode;
	String address;
	String detailAddress;
	String birth;
	String sex;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword_q() {
		return password_q;
	}
	public void setPassword_q(String password_q) {
		this.password_q = password_q;
	}
	public String getPassword_a() {
		return password_a;
	}
	public void setPassword_a(String password_a) {
		this.password_a = password_a;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPhone_zip() {
		return phone_zip;
	}
	public void setPhone_zip(String phone_zip) {
		this.phone_zip = phone_zip;
	}
	public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDetailAddress() {
		return detailAddress;
	}
	public void setDetailAddress(String detailAddress) {
		this.detailAddress = detailAddress;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	

	
	
	
	

	
}
