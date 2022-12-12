package kr.cctv.Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.cctv.entity.Paging;
import kr.cctv.entity.Board;

@Mapper
public interface BoardMapper {

	public int getTotalRowCount(Paging paging);

	public List<Board> boardList(Paging paging);

	public void boardInsert(Board vo);

	public Board boardContent(int bo_no);

	public void boardUpdate(Board vo);

	public void boardDelete(int bo_no);

}
