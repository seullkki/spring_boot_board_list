package edu.bit.ex.service;

import java.util.List;

import org.springframework.stereotype.Service;

import edu.bit.ex.mapper.ListMapper;
import edu.bit.ex.vo.Criteria;
import edu.bit.ex.vo.EmpVO;
import edu.bit.ex.vo.InfoVO;
import jdk.internal.org.jline.utils.Log;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@AllArgsConstructor
@Service
public class ListServiceImpl implements ListService {
	private ListMapper mapper;

//	@Override
//	public List<EmpVO> getList() {
//		return mapper.getList();
//	}
	
	
	@Override
	public List<InfoVO> getList(Criteria cri) {
		log.info("getList");
		return mapper.getList(cri);
	}

	@Override
	public int getTotal(Criteria cri) {
		log.info("getTotal");
		return mapper.getTotal(cri);
	}

	
	@Override
	public InfoVO getContetnView(int bId) {
		mapper.addHit(bId);
		return mapper.getContentView(bId);
	}

	@Override
	public void modify(InfoVO infoVO) {
		mapper.modify(infoVO);
	}

	@Override
	public InfoVO getReplyView(int bId) {
		return mapper.getReplyView(bId);
	}

	@Override
	public void reply(InfoVO infoVO) {
		mapper.replyShape(infoVO);
		mapper.reply(infoVO);
	}

	@Override
	public void delete(InfoVO infoVO) {
		mapper.delete(infoVO);
	}



}
