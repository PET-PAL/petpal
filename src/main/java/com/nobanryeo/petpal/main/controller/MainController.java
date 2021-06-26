package com.nobanryeo.petpal.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/*")
public class MainController {
	
	@GetMapping(value={"/", "main"})
	public String main() {
		
<<<<<<< HEAD
		return "admin/main/manager_main";
=======
		return "admin/main/adApproveList";
>>>>>>> refs/remotes/origin/sunghun
		
<<<<<<< HEAD
//		return "user/main/mainpage";
=======
	//	return "user/main/mainpage";
>>>>>>> refs/remotes/origin/sunghun
			
	}
	
	
}
