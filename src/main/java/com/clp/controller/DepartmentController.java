package com.clp.controller;


import com.clp.pojo.Department;
import com.clp.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class DepartmentController {

    @Autowired
    private DepartmentService departmentService;


//    @RequestMapping("/queryDepartment")
//    public Department queryDepartment(){
//        Department departments = departmentMapper.selectByPrimaryKey(1);
//        System.out.println(departments.getName());
//        return departments;
//    }
//
//    @RequestMapping("/addDept")
//    public String addDept(){
//        departmentMapper.insertSelective(new Department(null,"测试部"));
//        return "ok";
//    }
}
