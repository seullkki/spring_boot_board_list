package edu.bit.ex.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.bit.ex.vo.Criteria;
import edu.bit.ex.vo.EmpVO;
import edu.bit.ex.vo.InfoVO;

@Mapper
public interface ListMapper {

	public List<InfoVO> getList(Criteria cri);

	public int getTotal(Criteria cri);

	public InfoVO getContentView(int bId);

	public void modify(InfoVO infoVO);

//	public List<EmpVO> getList();

}
