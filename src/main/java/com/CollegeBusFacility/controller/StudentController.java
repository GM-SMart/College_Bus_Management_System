package com.CollegeBusFacility.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.CollegeBusFacility.model.Bus;
import com.CollegeBusFacility.model.BusDetails;
import com.CollegeBusFacility.model.Payment;
import com.CollegeBusFacility.model.User;
import com.CollegeBusFacility.service.AdminService;
import com.CollegeBusFacility.service.LoginService;
import com.CollegeBusFacility.service.StudentService;

@Controller
public class StudentController {

	
	@Autowired
	StudentService ss;
	@Autowired
	AdminService as;
	@Autowired
	LoginService ls;
	
   

	@GetMapping("viewprofile")
	public String showprofile(HttpSession session,Model m){
	// User user = ss.showuserprofile((String) session.getAttribute("username"));
	// List<User> user = new ArrayList<>();
	// user.add(ls.getUserByName("dv"));
	System.out.println("===============================================================================================================================");
	System.out.println((String) session.getAttribute("username")); //Debug line
	// m.addAttribute("flist",user);
	List<User> flist = ss.getUserDetails((String) session.getAttribute("username"));
	m.addAttribute("id", flist.get(0).getId());
	m.addAttribute("name", flist.get(0).getName());
	m.addAttribute("dob", flist.get(0).getDob());
	m.addAttribute("department", flist.get(0).getDepartment());
	m.addAttribute("phonenum", flist.get(0).getPhonenum());
	m.addAttribute("role", flist.get(0).getRole());
	m.addAttribute("address", flist.get(0).getAddress());
	
	return "viewprofile";
	}
	
	/*@GetMapping("viewprofile")
	public String showuserprofile(Model m) {
	List<User> CustomersAll = as.showuserprofile();
	m.addAttribute("flist", CustomersAll);
	return "viewprofile";
	}
	*/

	@GetMapping("validateprofile")
	public String Validate(HttpSession session,Model m){
	List<User> flist = ss.getUserDetails((String) session.getAttribute("username"));
	// System.out.println((String) session.getAttribute("username"));
	m.addAttribute("id", flist.get(0).getId());
	m.addAttribute("name", flist.get(0).getName());
	m.addAttribute("dob", flist.get(0).getDob());
	m.addAttribute("department", flist.get(0).getDepartment());
	m.addAttribute("phonenum", flist.get(0).getPhonenum());
	m.addAttribute("role", flist.get(0).getRole());
	m.addAttribute("address", flist.get(0).getAddress());
	return "validateprofile";
	}

	@PostMapping("validateprofile")
	public String addregister(
		@RequestParam Integer id,@RequestParam String name,@RequestParam String dob,@RequestParam String department,
	    @RequestParam String phonenum,@RequestParam String address,@RequestParam String role,Model m) {
		// System.out.println(id+" "+name);
		String[] Name = name.split(",");
		String[] DOB = dob.split(",");
		String[] Department = department.split(",");
		String[] Phonenum = phonenum.split(",");
		String[] Address = address.split(",");
		String[] Role = role.split(",");
		// System.out.println(Name[0]);
		int index=1;
		try{
			String a = Name[1];
		}catch (ArrayIndexOutOfBoundsException ex){
			index = 0;
		}

	    User user= new User(id,Name[index],DOB[index],Department[index],Phonenum[index],Address[index],"",Role[index],0,"","","","","",0,0);
	    String res = ss.updateValidation(user);
		if(res=="User Details Updated!"){
			m.addAttribute("msg",res);
			return "studentfachome";
		}else{
	    	return "validateprofile";
		}
	}
	

	@GetMapping("enrollbusroute")
	public String showenrollbusPage(Model m) {
		List<Bus> flist = ss.getAllBusDetails();
		m.addAttribute("flist", flist);
		return "enrollbusroute";
		}
		
	@PostMapping("enrollbusroute")
	public String showBusDetails(@RequestParam String route,HttpSession session ,Model m){
		List<Bus> flist = ss.getAllBusDetails();
		m.addAttribute("flist", flist);
		String res = ss.UpdateUserBusDetails(route, (String) session.getAttribute("username"));
		m.addAttribute("msg",res);
		System.out.println(res);
		if(res=="Enrollment Successful!"){
			List<BusDetails> busdetailslist= as.GetBusDetailsByBusno(route);
			m.addAttribute("blist",busdetailslist);
			System.out.println(busdetailslist.get(0).getBusno());
		}

		// List<BusDetails> bus = as.GetBusDetailsByBusno(route);
		// m.addAttribute("drivername", bus.get(0).getDrivername());
		return "enrollbusroute";

	}
	
	// @PostMapping("enrollbusroute")
	// public String adddesiredbus(@RequestParam Integer id,@RequestParam String name,@RequestParam String busnum,@RequestParam String routenum,@RequestParam String destination,@RequestParam String stoppings,@RequestParam String fee,
	//         Model m) {
	//     EnrollBusRoute enroll = new EnrollBusRoute(id,name,busnum,routenum,destination,stoppings,fee);
	//      String res = ss.Choosebus(enroll);
	//     m.addAttribute("msg",res);
	//     return "enrollbusroute";
	// 	}
	
	
	@GetMapping("payfee")
	public String showpayfeesPage(HttpSession session, Model m) {
	m.addAttribute("username", (String) session.getAttribute("username"));
	List<User> flist = ss.getUserDetails((String) session.getAttribute("username"));
	if(flist.get(0).getUserfees()!=0){
		m.addAttribute("fee", flist.get(0).getUserfees());
	}
	return "payfee";
	}

	@GetMapping("cardpayment")
	public String PayByCard(HttpSession session, Model m) {
	m.addAttribute("username", (String) session.getAttribute("username"));
	return "cardpayment";
	}

	@GetMapping("accountpayment")
	public String PayByAccount(HttpSession session, Model m) {
	m.addAttribute("username", (String) session.getAttribute("username"));
	List<User> flist = ss.getUserDetails((String) session.getAttribute("username"));
	try{
		List<Payment> userpayment = ss.getUserBalance((String) session.getAttribute("userid"));
		m.addAttribute("balance", userpayment.get(0).getBalance());
	}catch(IndexOutOfBoundsException io){
		int res = ss.insertUserBalance((String) session.getAttribute("userid"),10000);
		if(res==1){
		m.addAttribute("balance", 10000);
		}
	}
	m.addAttribute("fee", flist.get(0).getUserfees());
	return "accountpayment";
	}

	@PostMapping("accountpayment")
	public String PayConfirm(HttpSession session, Model m){
		List<Payment> userpayment = ss.getUserBalance((String) session.getAttribute("userid"));
		List<User> flist = ss.getUserDetails((String) session.getAttribute("username"));
		int balance = userpayment.get(0).getBalance() - flist.get(0).getUserfees();
		int res = ss.updateUserBalance((String) session.getAttribute("userid"),balance);
		if(res==1){
		m.addAttribute("msg", "Payment Successful");
		}
		return "payfee";
	}
	
	@GetMapping("help")
	public String showhelp(){
	return "help";
	}
	
	@PostMapping("help")
	public String storequery(HttpSession session,@RequestParam String issue, @RequestParam String description,Model m){
		// System.out.println("===========================");
		// System.out.println(issue);
		String res = ss.AddHelpQuestionMsg((String)session.getAttribute("username"), "Issue : "+issue+" | "+"Description : "+description);
		m.addAttribute("msg", res);
		return "help";
	}
	
	@GetMapping("forgetpassword")
	public String showchangepasswordpage(){
	return "changepassword";
	}
	
	@GetMapping("update")
	public String showupdate(){
	return "changepassword";
	}
	
	@GetMapping("cancel")
	public String showcancel(){
	return "studentfachome";
	}

	
	
	/*@Override
	public boolean Updatepassword(String password) {
	// TODO Auto-generated method stub
	 cust = this.GetCustomerById();
	String sql = "Update Customers set custFName = ?, custLName = ?, emailid = ?, passwoord = ?, gender = ?, dob = ?, mobile = ?, address = ? where custId = ?;";
	try {
	int r = jt.update(sql, custFname, custLname, emailId, password, gender, dob, mobileNo, address, cust.getCustId());
	if(r>=1) {
	return true;
	}
	else {
	return false;
	}
	}
	catch(Exception ex) {
	System.out.println(ex.getMessage());
	}
	return false;
	
	


}*/
}
