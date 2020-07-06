package www.uai.com.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Select;

import www.uai.com.vo.UploadProductFileVO;

public interface UploadFileSQLMapper {

	@Select("SELECT * FROM PRODUCT_FILES WHERE P_IDX = #{p_idx }")
	public ArrayList<UploadProductFileVO> selectByP_idx(String p_idx);
	
}
