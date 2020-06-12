package com.clp.service;

import com.clp.mapper.DepartmentMapper;
import com.clp.pojo.Department;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DepartmentService {

    @Autowired
    private DepartmentMapper departmentMapper;

    public List<Department> getDept(){
        List<Department> departments = departmentMapper.selectAll();
        return departments;
    }
}
