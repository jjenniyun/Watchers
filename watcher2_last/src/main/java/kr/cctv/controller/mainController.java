package kr.cctv.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.cctv.Mapper.cctvMapper;
import kr.cctv.entity.Employee;
import kr.cctv.entity.Notification;
import kr.cctv.entity.Paging;
import kr.cctv.entity.Paging2;

@Controller
public class mainController {

	@Autowired
	private cctvMapper mapper;

	@GetMapping("/home.do")
	public String home() {
		return "home";
	}

	@GetMapping("/cctv.do")
	public String cctv() {
		return "cctv";
	}

	@GetMapping("/administrator.do")
	public String administrator() {
		return "administrator";
	}

	@GetMapping("/employee.do")
	public String employee() {
		return "employee";
	}

	@GetMapping("/employee_remove.do")
	public String employee_remove() {
		return "employee_remove";
	}

	@RequestMapping("/employee_list.do")
	public String employee_list(Model model) {
		List<Employee> empList = mapper.empList();
		model.addAttribute("empList", empList);
		return "employee_list";
	}

	@RequestMapping("/cctv_view.do/{noti_no}")
	public String cctv_content(@PathVariable("noti_no") int noti_no, Model model) {

		Notification noti = mapper.cctvContent(noti_no);
		model.addAttribute("noti", noti);

		return "cctv_view";
	}

	@RequestMapping("/cctv_event.do")
	public String cctv_event(Model model, @ModelAttribute("paging2") Paging paging) {
		int totalRowCount2 = mapper.getTotalRowCount2(paging);
		paging.setTotalRowCount(totalRowCount2);
		paging.pageSetting();
		List<Notification> Notification = mapper.Notification(paging);
		model.addAttribute("nlist", Notification);
		System.out.print(Notification.get(0).getNoti_name());
		return "cctv_event";
	}

	@RequestMapping("/notiDelete.do/{noti_no}")
	public String notiDelete(@PathVariable("noti_no") int noti_no) {
		mapper.notiDelete(noti_no);
		return "redirect:/cctv_list.do";
	}

	@RequestMapping("/cctv_search.do")
	public String cctv_search(Model model, @ModelAttribute("paging3") Paging2 paging) {
		int totalRowCount3 = mapper.getTotalRowCount3(paging);
		paging.setTotalRowCount(totalRowCount3);
		paging.pageSetting();
		List<Notification> searchNoti = mapper.searchNoti(paging);
		model.addAttribute("searchlist", searchNoti);
		return "cctv_search";
	}

	@RequestMapping("/cctv_list.do")
	public String cctv_list(Model model, @ModelAttribute("paging2") Paging paging) {
		int totalRowCount2 = mapper.getTotalRowCount2(paging);
		paging.setTotalRowCount(totalRowCount2);
		paging.pageSetting();
		List<Notification> Notification = mapper.Notification(paging);
		model.addAttribute("nlist", Notification);
		System.out.print(Notification.get(0).getNoti_name());
		return "cctv_list";
	}
	
	@RequestMapping("/cctv_remove.do/{noti_no}")
	public String cctv_remove(@PathVariable("noti_no") int noti_no, Model model) {

		Notification noti = mapper.cctvContent(noti_no);
		model.addAttribute("noti", noti);

		return "cctv_remove";
	}

}
