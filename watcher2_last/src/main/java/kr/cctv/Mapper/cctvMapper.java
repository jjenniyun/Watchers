package kr.cctv.Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.cctv.entity.Employee;
import kr.cctv.entity.Notification;
import kr.cctv.entity.Paging;
import kr.cctv.entity.Paging2;

@Mapper
public interface cctvMapper {

	public void empJoin(Employee emp);

	public List<Employee> empList();

	public Employee empLogin(Employee emp);

	public void empUpdate(Employee emp);

	public void empDelete(int emp_no);

	public Employee empSelect(int emp_no);

	public List<Notification> notiList();

	public Notification cctvContent(int noti_no);

	public List<Notification> Notification(Paging paging);

	public void notiDelete(int noti_no);

	public int getTotalRowCount2(Paging paging);

	public List<Notification> searchNoti(Paging2 paging);

	public int getTotalRowCount3(Paging2 paging);

}
