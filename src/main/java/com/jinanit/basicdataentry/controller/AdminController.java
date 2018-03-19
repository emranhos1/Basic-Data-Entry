package com.jinanit.basicdataentry.controller;

import com.jinanit.basicdataentry.dao.AdminDao;
import com.jinanit.basicdataentry.model.Admin;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.xml.ws.soap.Addressing;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/")
public class AdminController {

    @Autowired
    AdminDao adminDao;
    private List<Admin> list;
    String usrName;
    String userPassowrd;
//    @Autowired
//    private Admin admin;

    @RequestMapping(value = {"/adminLogin"}, method = RequestMethod.GET)
    public String login(ModelMap model) {
        model.put("pathAction", "AdminLoginForm");
        model.addAttribute("admin", new Admin());
        return "adminLogin";
    }

    @RequestMapping(value = "/AdminLoginForm", method = RequestMethod.POST)
    public String AdminLoginForm(HttpServletRequest request, ModelMap model, @ModelAttribute("admin") Admin admin, RedirectAttributes redirectAttributes) {
        list = adminDao.getAdmin();
        System.out.println("Value from View Page : " + admin.getAdmin_username());
        for (Admin admin1 : list) {
            usrName = admin1.getAdmin_username();
            userPassowrd = admin1.getAdmin_password();
            System.out.println(userPassowrd + usrName);
        }
        if (admin.getAdmin_username().equals(usrName)) {
            System.out.println("Action is working : ");

        }
//
        System.out.println("Value from View Page 1 : " + admin.getAdmin_username());

//        System.out.println(i);
//        if (i > 0) {
//            return "redirect:/sucessMasg";
//        } else {
//            return "redirect:/errorMasg";
//        }
        return "redirect:/sucessMasg";
    }

//    public Admin getAdmin() {
//        if (admin == null) {
//            admin = new Admin();
//
//        }
//        return admin;
//    }
//
//    public void setAdmin(Admin admin) {
//        this.admin = admin;
//    }

}
