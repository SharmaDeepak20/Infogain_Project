package com.org.dao;

import java.util.List;

import com.org.bean.Admin;
import com.org.bean.Transaction1;
import com.org.bean.Users;

public interface DatabaseDao {
	public Users verifyCardNumber(String cardNumber);
	public List<Users> verifyPinAndCardNumber(String cardNumber, int pinNumber);
	public List<Admin> loginAdmin(Admin admin);
	public void totalUserCount();
	public void depositMoney(String cardNumber,double amount);
	public boolean chequeBookRequest(String cardNumber);
	public boolean checkBookData(String cardNumber);
	public void updateChequeBookStatus(String cardNumber);
	public boolean withdrawalMoney(String cardNumber,double amount);
	public double checkBalance(String cardNumber);
	public List<Transaction1> miniStatement(String cardNumber);
	public double currentBalance(String cardNumber);
	public void pinChange(int newPin, String cardNumber);
	public void changePhoneNumber(String cardNumber, String number);
	public List<Users> showAllUsers();
	public void insertUser(Users users);
	public List<Transaction1> depositReport();
	public List<Transaction1> withdrawalReport();
	public List<Transaction1> transactionReport();
}
