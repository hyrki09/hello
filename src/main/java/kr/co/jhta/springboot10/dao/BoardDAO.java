package kr.co.jhta.springboot10.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import kr.co.jhta.springboot10.dto.BoardDTO;
import kr.co.jhta.springboot10.dto.StartEnd;

@Repository
@Mapper
public interface BoardDAO {
	List<BoardDTO> getAll();
	List<BoardDTO> readAll(StartEnd se);
	void insertOne(BoardDTO dto);
	BoardDTO getOne(int no);
	void updateOne(BoardDTO dto);
	void deleteOne(int no);
	void raiseHits(int bno);
	int getTotal();
}
