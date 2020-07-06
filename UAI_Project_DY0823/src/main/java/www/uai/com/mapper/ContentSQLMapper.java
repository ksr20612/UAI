package www.uai.com.mapper;

import org.apache.ibatis.annotations.Select;

import www.uai.com.vo.ProductVO;

public interface ContentSQLMapper {

	@Select("SELECT COUNT(*) FROM StarRate WHERE P_IDX = ${p_idx}")
	public int getStarCount(ProductVO productVO);
}
