package com.clp.controller;

import com.clp.mapper.DepartmentMapper;
import com.clp.mapper.EmployeeMapper;
import com.clp.pojo.Department;
import com.clp.pojo.Employee;
import com.clp.service.DepartmentService;
import com.clp.service.EmployeeService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.*;

@Controller
public class EmployeeController {

    @Autowired
    private EmployeeService employeeService;

    @Autowired
    private DepartmentService departmentService;


    @RequestMapping(value = "/delEmp/{id}",method = RequestMethod.DELETE)
    public String delEmp(@PathVariable("id") Integer id){
        employeeService.delEmp(id);
        return "redirect:/emps";
    }

    /**
     * 获取要修改的员工的数据
     * @param id
     * @param model
     * @return
     */
    @GetMapping("/emp/{id}/{pn}")
    public String toUpdateEmp(@PathVariable("id") Integer id, @PathVariable("pn") Integer pn,Model model){
        //查出原来的数据
        Employee employee = employeeService.getEmpInfo(id);
        model.addAttribute("emp",employee);
//        查出所有部门的信息
        List<Department> depts = departmentService.getDept();
        model.addAttribute("depts",depts);
        model.addAttribute("pn",pn);
        return "/emp/update";
    }

    /**
     * 修改员工
     * @param employee
     * @return
     */
    @PostMapping("/updateEmp/{pn}")
    public String updateEmp(@PathVariable("pn") Integer pn,Employee employee){
        employeeService.updateEmp(employee);
        return "redirect:/emps?pn="+pn;
    }



//    @GetMapping("/test")
//    @ResponseBody
//    public Employee test(){
//        Employee employee = employeeService.getEmpInfo(2);
//        System.out.println(employee.getName());
//        return employee;
//    }

    /**
     * 添加员工
     * @param employee
     * @return
     */
    @PostMapping("/addEmp/{pn}")
    public String addEmp(@PathVariable("pn") Integer pn, @Validated Employee employee, BindingResult result,Model model){
        if (result.hasErrors()) {
            //校验失败，应该返回失败，在模块框中显示校验失败的错误信息
            Map<String, Object> map = new HashMap<>();
            List<FieldError> errors = result.getFieldErrors();
            for (FieldError error : errors) {
                System.out.println("错误的字段名：" + error.getField());
                System.out.println("错误信息：" + error.getDefaultMessage());
                map.put(error.getField(), error.getDefaultMessage());
            }
            return "redirect:/emps";
        }else {
            employeeService.saveEmp(employee);
            return "redirect:/emps?pn="+pn;
        }
    }



    /**
     * 查询所有员工信息（分页查询）
     * @return
     */
    @RequestMapping("/emps")
    public String getEmps(@RequestParam(value = "pn",defaultValue = "1") Integer pn,Model model){
        //引入PageHelper分页插件  pn：传入页码，pageSize：每页的记录数
        PageHelper.startPage(pn,5);
        List<Employee> employees = employeeService.getAll();
        //封装了详细的分页信息 ，包括我们查询出来的数据,
        PageInfo pageInfo = new PageInfo(employees,5);
        model.addAttribute("pageInfo",pageInfo);
        //部门信息
        List<Department> depts = departmentService.getDept();
        model.addAttribute("depts",depts);
        return "emp/list";
    }

    /**
     * 查询所有员工信息(不带分页功能)
     * @param model
     * @return
     */
//    @RequestMapping("/emps")
//    public String list(Model model){
//        List<Employee> employees = employeeService.getAll();
//        model.addAttribute("emps",employees);
//        return "emp/list";
//    }

//    @RequestMapping("/depts")
//    @ResponseBody
//    public List<Department> depts(Model model){
//        List<Department> depts = departmentService.getDept();
//        model.addAttribute("depts",depts);
//        return depts;
//    }

//    @Autowired
//    SqlSession sqlSession;


    //批量添加员工到数据库中
//    @RequestMapping("/addEmp")
//    public String addEmp(){
//        EmployeeMapper mapper = sqlSession.getMapper(EmployeeMapper.class);
//        for (int i=0;i<200;i++){
//            String uid = UUID.randomUUID().toString().substring(0, 5)+i;
//            mapper.insertSelective(new Employee(null,uid,"M",uid+"@qq.com",1));
//        }
//        return "ok";
//    }
}
