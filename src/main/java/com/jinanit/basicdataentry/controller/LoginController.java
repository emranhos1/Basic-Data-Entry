/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jinanit.basicdataentry.controller;

import com.jinanit.basicdataentry.dao.OutletDao;
import com.jinanit.basicdataentry.dao.RentECarDao;
import com.jinanit.basicdataentry.model.Outlet;
import com.jinanit.basicdataentry.model.RentECar;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 *
 * @author Dell
 */
@Controller
@RequestMapping("/")
public class LoginController {

    @Autowired
    RentECarDao rentECarDao;
    @Autowired
    OutletDao outletDao;

    @RequestMapping(value = {"/", "home"}, method = RequestMethod.GET)
    public String login(ModelMap model) {
        return "index";
    }

    @RequestMapping(value = {"/rentCarReg"}, method = RequestMethod.POST)
    public String rentEcarReg(ModelMap model) {
        model.put("pathAction", "CarRegForm");
        model.addAttribute("rentEcar", new RentECar());
        return "rentCarRegForm";
    }

    @RequestMapping(value = {"/outletReg"}, method = RequestMethod.POST)
    public String outletReg(ModelMap model) {
        model.put("pathAction", "OutletRegForm");
        model.addAttribute("outlet", new Outlet());
        return "outletRegForm";
    }

    @RequestMapping(value = "/OutletRegForm", method = RequestMethod.POST)
    public String OutletRegForm(HttpServletRequest request, ModelMap model, @ModelAttribute("outlet") Outlet outlet, RedirectAttributes redirectAttributes) {
        int i = outletDao.saveOutlet(outlet);
        System.out.println(i);
        if (i > 0) {
            return "redirect:/sucessMasg";
        } else {
            return "redirect:/errorMasg";
        }
    }
    
    @RequestMapping(value = "/CarRegForm", method = RequestMethod.POST)
    public String CarRegForm(HttpServletRequest request, ModelMap model, @ModelAttribute("rentEcar") RentECar rent_e_car, RedirectAttributes redirectAttributes) {
        int i = rentECarDao.saveRentECar(rent_e_car);
        System.out.println(i);
        if (i > 0) {
            return "redirect:/sucessMasg";
        } else {
            return "redirect:/errorMasg";
        }
    }

    @RequestMapping(value = {"/sucessMasg"}, method = RequestMethod.GET)
    public String sucess(HttpServletRequest request, ModelMap model) {
        return "sucess";
    }

    @RequestMapping(value = {"/errorMasg"}, method = RequestMethod.GET)
    public String errorMasg(HttpServletRequest request, ModelMap model) {
        return "error";
    }
}
