/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jinanit.basicdataentry.util;

import java.io.File;
import java.util.UUID;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Repository;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author User
 */
@Repository
public class FileUpload {


    public String fileSave(HttpServletRequest request, MultipartFile multipartFile) {
        String fileName = null;
        try {
            
            String UPLOAD_LOCATION = "E:/Programming/1. Office project/Project/Moghol Market/BasicDataEntry/src/main/webapp/WEB-INF/file/";
//            String UPLOAD_LOCATION = "/image/";
//            System.out.println(UPLOAD_LOCATION);
            fileName = UUID.randomUUID()+ multipartFile.getOriginalFilename();
            String path = request.getServletContext().getRealPath(UPLOAD_LOCATION);
            File directory = new File(path + fileName);
//            File directory = new File(directory);
            System.out.println(directory);
            if (!directory.exists()) {
                directory.mkdirs();
                FileCopyUtils.copy(multipartFile.getBytes(), new File(UPLOAD_LOCATION + fileName));
            } else {
                FileCopyUtils.copy(multipartFile.getBytes(), new File(UPLOAD_LOCATION + fileName));
            }
        } catch (Exception e) {
            System.out.println("Object fileSave------------>" + e);
            fileName = null;
        }
        return fileName;
    }
}
