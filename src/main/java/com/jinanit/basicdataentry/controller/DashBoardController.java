/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jinanit.basicdataentry.controller;

import com.google.gson.Gson;
import com.jinanit.basicdataentry.dao.OutletDao;
import com.jinanit.basicdataentry.dao.RentECarDao;
import com.jinanit.basicdataentry.model.Outlet;
import com.jinanit.basicdataentry.model.RentECar;
import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author Istiaque && Emran
 */
@Controller
@RequestMapping("/dashboard")
public class DashBoardController {

    Gson gson = new Gson();
    @Autowired
    OutletDao outletDao;
    @Autowired
    RentECarDao recd;

    @RequestMapping(value = {"/dashboard"}, method = RequestMethod.GET)
    public String login(ModelMap model) {
        return "dashboard";
    }

    @RequestMapping(value = "/getLastFivOutlate", method = RequestMethod.GET)
    @ResponseBody
    public String getOutletLastEntry(ModelMap model) {
        ArrayList<Outlet> list;//
        list = (ArrayList<Outlet>) outletDao.getOutlet(5);
        String reportJsonData = gson.toJson(list);
        return reportJsonData;
    }

    @RequestMapping(value = "/getLastFivRenteCar", method = RequestMethod.GET)
    @ResponseBody
    public String getRentECarLastEntry(ModelMap model) {
        ArrayList<RentECar> list;//
        list = (ArrayList<RentECar>) recd.getRentCar(5);
        String reportJsonData = gson.toJson(list);
        return reportJsonData;
    }
}
