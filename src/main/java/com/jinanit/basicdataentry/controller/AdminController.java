package com.jinanit.basicdataentry.controller;

import com.jinanit.basicdataentry.dao.AdminDao;
import com.jinanit.basicdataentry.model.Admin;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class AdminController {

    @Autowired
    AdminDao adminDao;

    @RequestMapping(value = {"/adminLogin"}, method = RequestMethod.GET)
    public String login(ModelMap model) {
        model.put("pathAction", "AdminLoginForm");
        model.addAttribute("admin", new Admin());
        return "adminLogin";
    }

    @RequestMapping(value = "/AdminLoginForm", method = RequestMethod.POST)
    public String AdminLoginForm(HttpServletRequest request, ModelMap model, @ModelAttribute("admin") Admin admin) {
        Admin a = adminDao.getOneAdmin(admin);
        if (a != null) {
            return "dashboard";
        } else {
            return "redirect:/adminLogin";
        }
    }

}
