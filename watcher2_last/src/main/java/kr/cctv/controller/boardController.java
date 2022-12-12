package kr.cctv.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.cctv.entity.Board;
import kr.cctv.entity.Paging;
import kr.cctv.Mapper.BoardMapper;

@Controller
public class boardController {

	@Autowired
	private BoardMapper mapper;

	@GetMapping("/community_text.do")
	public String community_text() {
		return "community_text";
	}

	@RequestMapping("/community.do")
	public String boardList(Model model, @ModelAttribute("paging") Paging paging) {
		int totalRowCount = mapper.getTotalRowCount(paging);
		paging.setTotalRowCount(totalRowCount);
		paging.pageSetting();
		List<Board> list = mapper.boardList(paging);
		model.addAttribute("list", list);
		return "community";
	}

	@RequestMapping("/boardInsertForm.do")
	public String boardInsertForm() {
		return "boardInsertForm";
	}

	@RequestMapping("/boardInsert.do")
	public String boardInsert(Board vo) {
		mapper.boardInsert(vo);
		return "redirect:/community.do";
	}

	@RequestMapping("/community_remove.do/{bo_no}")
	public String boardContent(@PathVariable("bo_no") int theBO_NO, Model model) {
		Board vo = mapper.boardContent(theBO_NO);

		model.addAttribute("vo", vo);

		return "community_remove";
	}

	@RequestMapping("/boardUpdateForm.do")
	public String boardUpdateForm(int bo_no, Model model) {
		Board vo = mapper.boardContent(bo_no);
		model.addAttribute("vo", vo);
		return "community_update";
	}

	@RequestMapping("/boardUpdate.do")
	public String boardUpdate(Board vo) {
		mapper.boardUpdate(vo);
		return "redirect:/community.do";
	}

	@RequestMapping("/boardDelete.do/{bo_no}")
	public String boardDelete(@PathVariable("bo_no") int bo_no) {
		mapper.boardDelete(bo_no);
		return "redirect:/community.do";
	}

}
