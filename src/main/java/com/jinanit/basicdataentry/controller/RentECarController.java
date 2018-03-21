/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jinanit.basicdataentry.controller;

import com.jinanit.basicdataentry.dao.RentECarDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Istiaque && Emran
 */
@Controller
@RequestMapping("/rentecar")
public class RentECarController {

    @Autowired
    RentECarDao recd;

    @RequestMapping(value = {"/rentecar"}, method = RequestMethod.GET)
    public String rentEcar(ModelMap model) {
        model.addAttribute("carObj",recd.getRentCar(0));
        return "rentEcar";
    }
}
