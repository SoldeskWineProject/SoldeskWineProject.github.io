package wine.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
public class HomeController {
	
	//@Resource(name = "loginUserBean")
	//private UserBean loginUserBean;
	
	@RequestMapping(value= "/", method = RequestMethod.GET)
	public String home() {
		
		//System.out.println(loginUserBean);
		return "redirect:/main";
	}
	
}
