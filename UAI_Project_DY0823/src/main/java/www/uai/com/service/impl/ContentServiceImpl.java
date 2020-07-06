package www.uai.com.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import www.uai.com.mapper.ContentSQLMapper;
import www.uai.com.service.ContentService;
import www.uai.com.vo.ProductVO;

@Service
public class ContentServiceImpl implements ContentService {

	@Autowired
	private ContentSQLMapper contentSQLMapper;
	
	@Override
	public int getStarCount(ProductVO productVO) {
		
		int starNumber = contentSQLMapper.getStarCount(productVO) ;
		
		return starNumber;
	}

}
