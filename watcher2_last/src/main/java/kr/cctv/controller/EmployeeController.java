package kr.cctv.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.cctv.Mapper.cctvMapper;
import kr.cctv.entity.Employee;

@Controller
public class EmployeeController {

	@Autowired
	private cctvMapper mapper;

	@RequestMapping("/employee.do")
	public String employee() {

		return "employee";
	}

	@RequestMapping("/empJoin.do")
	public String empJoin(Employee emp) {

		mapper.empJoin(emp);

		return "redirect:/employee.do";

	}

	@PostMapping("/Login.do")
	public String Login(Employee emp, HttpServletRequest request) {

		Employee loginEmp = mapper.empLogin(emp);

		if (loginEmp != null) {
			HttpSession session = request.getSession();
			session.setAttribute("loginEmp", loginEmp);
			System.out.println("로그인 성공!");
			return "cctv";

		} else {
			System.out.println("로그인 실패!");
			return "home";
		}
	}

	@RequestMapping("/logout.do")
	public String Logout(HttpSession session) {
		session.removeAttribute("loginEmp");

		return "home";
	}

	@RequestMapping("/empUpdate.do")
	public String empUpdate(Employee emp) {

		mapper.empUpdate(emp);
		return "redirect:/employee_list.do";
	}

	@RequestMapping("/empDelete.do")
	public String empDelete(int emp_no) {

		mapper.empDelete(emp_no);

		return "redirect:/employee_list.do";
	}

	@PostMapping("/empSelect.do")
	public String selectEmp(int emp_no, HttpServletRequest request) {

		Employee selectEmp = mapper.empSelect(emp_no);

		if (selectEmp != null) {
			HttpSession session = request.getSession();
			session.setAttribute("selectEmp", selectEmp);
			System.out.println("세션 성공!");

			return "employee_remove";

		} else {
			System.out.println("세션 실패!");
			return "employee_list";
		}
	}
}
