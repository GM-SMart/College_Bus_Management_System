package com.CollegeBusFacility.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.CollegeBusFacility.model.User;

import com.CollegeBusFacility.service.LoginService;
import com.CollegeBusFacility.service.StudentService;



@Controller
public class LoginController {
	@Autowired
	LoginService lr;
	@Autowired
	StudentService ss;
	
	// @GetMapping("error")
	// public String error(){
	// 	return "error";
	// }
	
	@GetMapping(value={"mlogin","/"})
	public String showLoginPage(){
		return "login";
	}
	@GetMapping(value="adminlogin")
	public String showAdminLoginPage() {
		return "adminlogin";
	}
	@GetMapping(value="studentfaclogin")
	public String showstudentPage(){
		return "studentfaclogin";
	}
	@GetMapping(value="studentfachome")
	public String showstudentHome(){
		return "studentfachome";
	}

	@GetMapping(value="logout")
	public String showlogout(HttpSession session){
		session.removeAttribute("username");
		return "logout";
	}

	@GetMapping(value="adminhome")
	public String showadminhoem(){
		return "adminhome";
	}
	
	
	@PostMapping("adminlogin")
	public String adminloginProcess(@RequestParam String userid,@RequestParam String password,Model m)
	{
		boolean res = lr.validateAdmin(userid, password);
		if(res){
			return "redirect:adminhome";
			}
			else{
				m.addAttribute("msg", "Wrong Username/Password");
				return "adminlogin";
			}
	}
	
	@PostMapping("studentfaclogin")
	public String userLoginProcess(@RequestParam String name,@RequestParam String password,HttpSession session,Model m)
	{
		 
			int res = lr.validateUser(name, password);
			if(res!=0){
				List<User> userobjList = ss.getUserDetails(name);
				User userobj = userobjList.get(0);
				session.setAttribute("username", name);	//Setting login session
				session.setAttribute("userid", String.valueOf(userobj.getId()));
			}
			if(res==1){
			 return "/changepassword"; //First login page from DOB
			}
			 else if (res == 2) {
			 return "redirect:validateprofile"; //Validation page
			 }
			 else if (res == 3) {
			return "redirect:studentfachome"; //Home page
			} else {
			 m.addAttribute("msg", "Wrong Username / Password");
			 return "studentfaclogin";
			 }
			 } 
			 
	
	
	@GetMapping("register")
	public String showsregisterPage(){
		return "register";
	}
	
	@PostMapping("register")
	public String addregister(
		@RequestParam Integer id,@RequestParam String name,@RequestParam String dob,@RequestParam String department,
	    @RequestParam String phonenum,@RequestParam String address,@RequestParam String role,@RequestParam String password,
		@RequestParam String qtn1,@RequestParam String qtn2,@RequestParam String qtn3,Model m) {
	    User user= new User(id,name,dob,department,phonenum,address,password,role,0,qtn1,qtn2,qtn3,"","",0,0);
	     String res = lr.Register(user);
		 String[] arrOfStr = res.split("/");
	    m.addAttribute("msg",arrOfStr[0]);
		m.addAttribute("res", arrOfStr[1]);
	    return "studentfaclogin";
	}

	@PostMapping("forgetpassword")
	public String forgetpassword(@RequestParam String username,@RequestParam String qtn1,@RequestParam String qtn2,@RequestParam String qtn3 , @RequestParam String np,@RequestParam String c_np,Model m){
		boolean res = lr.validateChangePassword(username,qtn1,qtn2,qtn3,np,c_np);
		if(res){
			if(np.equals(c_np)){
				lr.changepassword(np,username);
				return "studentfaclogin";

			}// else print err in same pass
		}
		return "forgetpassword";
	}
	
	
	
	
	
	

}
