
package com.team3web.shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

// 게스트 관련 컨트롤러
@Controller
public class GuestController {
	  @RequestMapping("/introduce")
	    public ModelAndView getIntroduce() {
	        ModelAndView mv = new ModelAndView("introduce");
	        return mv;
	    }
	  
	  @RequestMapping("/TermsOfService")
	    public ModelAndView getTermsOfService() {
	        ModelAndView mv = new ModelAndView("TermsOfService");
	        return mv;
	    }
	  @RequestMapping("/PrivacyPolicy")
	    public ModelAndView getPrivacyPolicy() {
	        ModelAndView mv = new ModelAndView("PrivacyPolicy");
	        return mv;
	    }
	  @RequestMapping("/notice")
	    public ModelAndView getNotice() {
	        ModelAndView mv = new ModelAndView("notice");
	        return mv;
	    }
	  @RequestMapping("/q&a")
	    public ModelAndView getQa() {
	        ModelAndView mv = new ModelAndView("q&a");
	        return mv;
	    }
	  @RequestMapping("/inspection")
	    public ModelAndView getInspection() {
	        ModelAndView mv = new ModelAndView("inspection");
	        return mv;
	    }
}
