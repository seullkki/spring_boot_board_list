package edu.bit.ex.service;

import java.util.List;

import edu.bit.ex.vo.Criteria;
import edu.bit.ex.vo.EmpVO;
import edu.bit.ex.vo.InfoVO;

public interface ListService {

	public List<InfoVO> getList(Criteria cri);

	public int getTotal(Criteria cri);

	public InfoVO getContetnView(int getbId);

	public void modify(InfoVO infoVO);

//	public List<EmpVO> getList();

}
