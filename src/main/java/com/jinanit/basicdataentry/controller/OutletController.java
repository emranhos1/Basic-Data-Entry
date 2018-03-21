/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jinanit.basicdataentry.controller;

import com.jinanit.basicdataentry.dao.OutletDao;
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
@RequestMapping("/outlet")
public class OutletController {
    
    @Autowired
    OutletDao recd;

    @RequestMapping(value = {"/outlet"}, method = RequestMethod.GET)
    public String outlet(ModelMap model) {
        model.addAttribute("outletObj",recd.getOutlet(0));
        return "outlet";
    }
}
