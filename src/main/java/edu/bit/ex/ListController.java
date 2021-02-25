package edu.bit.ex;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import edu.bit.ex.service.ListService;
import edu.bit.ex.vo.Criteria;
import edu.bit.ex.vo.PageVO;
import jdk.internal.org.jline.utils.Log;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;

// log 가져오기 다시 : log4j 말고 @slf4j 가져오기 / log4j를 설정해서 쓸수도 있긴 하지만 속도가 더 빠름
@Slf4j
@AllArgsConstructor
@Controller
public class ListController {
	private ListService service;
	
//	@GetMapping("/list")
//	public ModelAndView list(ModelAndView mav) throws Exception {
//		//Log.info("list");
//		log.debug("list()");
//		log.info("list()");
//		
//		mav.setViewName("list");
//		mav.addObject("list", service.getList());
//		
//		return mav;
//	}
	
	
	@GetMapping("/list")
	public ModelAndView list(ModelAndView mav, Criteria cri) throws Exception {
		log.debug("list()");
		log.info("list()");
		
		mav.setViewName("list");
		mav.addObject("list", service.getList(cri));
		
		int total = service.getTotal(cri);
		log.info("total : " + total);
		
		mav.addObject("pageMaker", new PageVO(cri, total));
		
		return mav;
	}

}
