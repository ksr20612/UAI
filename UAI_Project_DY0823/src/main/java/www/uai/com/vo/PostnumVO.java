package www.uai.com.vo;

public class PostnumVO {

	private int startPostNum; 
	private int endPostNum;
	private String m_idx;
	private String p_type;
	private String p_location;
	private String searchWord;
	private String searchQuery;

	public PostnumVO() {}
	
	public PostnumVO(int startPostNum, int endPostNum) {
		super();
		this.startPostNum = startPostNum;
		this.endPostNum = endPostNum;
	}

	public PostnumVO(int startPostNum, int endPostNum, String m_idx) {
		super();
		this.startPostNum = startPostNum;
		this.endPostNum = endPostNum;
		this.m_idx = m_idx;
	}
	
	public PostnumVO(int startPostNum, int endPostNum, String m_idx, String p_type, String p_location,
			String searchWord) {
		super();
		this.startPostNum = startPostNum;
		this.endPostNum = endPostNum;
		this.m_idx = m_idx;
		this.p_type = p_type;
		this.p_location = p_location;
		this.searchWord = searchWord;
	}

	public int getStartPostNum() {
		return startPostNum;
	}

	public void setStartPostNum(int startPostNum) {
		this.startPostNum = startPostNum;
	}

	public int getEndPostNum() {
		return endPostNum;
	}

	public void setEndPostNum(int endPostNum) {
		this.endPostNum = endPostNum;
	}

	public String getM_idx() {
		return m_idx;
	}

	public void setM_idx(String m_idx) {
		this.m_idx = m_idx;
	}

	public String getP_type() {
		return p_type;
	}

	public void setP_type(String p_type) {
		this.p_type = p_type;
	}

	public String getP_location() {
		return p_location;
	}

	public void setP_location(String p_location) {
		this.p_location = p_location;
	}

	public String getSearchWord() {
		return searchWord;
	}

	public void setSearchWord(String searchWord) {
		this.searchWord = searchWord;
	}

	public String getSearchQuery() {
		return searchQuery;
	}

	public void setSearchQuery(String searchQuery) {
		this.searchQuery = searchQuery;
	}

}
