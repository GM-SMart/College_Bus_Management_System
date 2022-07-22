package com.CollegeBusFacility.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.CollegeBusFacility.model.Bus;
import com.CollegeBusFacility.model.Payment;
import com.CollegeBusFacility.model.User;

@Service
public interface StudentService {

	public String updateValidation(User user);

	public List<Bus> getAllBusDetails();

	public List<User> getUserDetails(String name);

	public String UpdateUserBusDetails(String routenum, String uname);

	public List<Payment> getUserBalance(String userid);

	public int updateUserBalance(String userid, int balance);

	public int insertUserBalance(String userid, int balance);

	public String AddHelpQuestionMsg(String userid,String question);

	public String AddHelpAnswerMsg(String userid,String answer);
	// public User showuserprofile(String name);

    
	

}
