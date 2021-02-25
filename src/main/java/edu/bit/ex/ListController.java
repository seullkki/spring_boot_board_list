package edu.bit.ex;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import edu.bit.ex.service.ListService;
import edu.bit.ex.vo.Criteria;
import edu.bit.ex.vo.InfoVO;
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
	
	
	@GetMapping("/list/{bId}")
	public ModelAndView contentView(ModelAndView mav, InfoVO infoVO) throws Exception {
		log.debug("contentView()");
		log.info("contentView()");
		
		mav.setViewName("contentView2");
		mav.addObject("contentView", service.getContetnView(infoVO.getbId()));
		
		return mav;
	}
	
	// restful - modify 실패
//	@PutMapping("/list/{bId}")
//	public ResponseEntity<String> modify(@RequestBody InfoVO infoVO) {
//		ResponseEntity<String> entity = null;
//		
//		log.info("modify");
//		
//		try {
//			service.modify(infoVO);
//			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
//		}catch(Exception e){
//			e.printStackTrace();
//			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
//		}
//	
//		return entity;
//	}
	
	
	@RequestMapping("/list/modify")
	public String modify(InfoVO infoVO) {
		log.info("modify");
		service.modify(infoVO);
		return "redirect:/list";				// restful 사용하지 않을 때는, return으로 list 돌려줘야 함.
	}
	

}
