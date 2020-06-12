package com.clp.pojo;

import javax.validation.constraints.Pattern;

public class Employee {
    private Integer id;

    // 自定义校验规则
    @Pattern(regexp = "(^[a-zA-Z0-9_]{3,10}$)|(^[\\u2E80-\\u9FFF]{2,5}$)",
            message ="用户名必须是2-5位中文或者3-10位英文和数字的组合")
    private String name;

    private String gender;

    @Pattern(regexp = "^([a-z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$",
            message = "邮箱格式不正确")
    private String email;

    private Integer deptId;

    //员工部门信息
    private Department department;

    public Employee() {
    }

    public Employee(Integer id, String name, String gender, String email, Integer deptId) {
        this.id = id;
        this.name = name;
        this.gender = gender;
        this.email = email;
        this.deptId = deptId;
    }

    public Department getDepartment() {
        return department;
    }

    public void setDepartment(Department department) {
        this.department = department;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender == null ? null : gender.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public Integer getDeptId() {
        return deptId;
    }

    public void setDeptId(Integer deptId) {
        this.deptId = deptId;
    }
}