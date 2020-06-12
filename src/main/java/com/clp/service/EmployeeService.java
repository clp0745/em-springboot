package com.clp.service;

import com.clp.mapper.EmployeeMapper;
import com.clp.pojo.Employee;
import com.clp.pojo.EmployeeExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmployeeService {

    @Autowired
    private EmployeeMapper employeeMapper;

    /**
     * 查询所有员工
     * @return
     */
    public List<Employee> getAll(){
        EmployeeExample employeeExample = new EmployeeExample();
        employeeExample.setOrderByClause("`ID` ASC");
        return employeeMapper.selectByExampleWithDept(employeeExample);
    }

    /**
     * 保存员工
     * @param record
     */
    public void saveEmp(Employee record){
        employeeMapper.insertSelective(record);
    }

    /**
     * 获取员工信息
     * @param id
     * @return
     */
    public Employee getEmpInfo(Integer id){
        return employeeMapper.selectByPrimaryKeyWithDept(id);
    }

    /**
     * 更新员工信息
     * @param employee
     */
    public void updateEmp(Employee employee){
        employeeMapper.updateByPrimaryKeySelective(employee);
    }

    public void delEmp(Integer id){
        employeeMapper.deleteByPrimaryKey(id);
    }
}
