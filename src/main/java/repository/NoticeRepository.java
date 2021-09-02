package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import model.NoticeDTO;

public class NoticeRepository {
	@Autowired
	SqlSession sqlSession;
	private final String namespace = "mappers.noticeMapper";
	private String statement;
	public List<NoticeDTO> noticeSelect(){
		statement = namespace + ".noticeSelect";
		return sqlSession.selectList(statement);
	}
}