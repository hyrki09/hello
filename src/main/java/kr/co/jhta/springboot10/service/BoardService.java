package kr.co.jhta.springboot10.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.jhta.springboot10.dao.BoardDAO;
import kr.co.jhta.springboot10.dto.BoardDTO;
import kr.co.jhta.springboot10.dto.StartEnd;

@Service
public class BoardService {

	@Autowired
	private BoardDAO dao;
	
	public List<BoardDTO> selectAll(int startNo, int endNo){
		StartEnd se = new StartEnd(startNo, endNo);
		// rownum은 꺼낼 때 결정이 된다.
		return dao.readAll(se);
	}
	
	public List<BoardDTO> selectAll(){
		return dao.getAll();
	}
	
	public void add(BoardDTO dto) {
		dao.insertOne(dto);
	}
	
	public BoardDTO selectOne(int no) {
		dao.raiseHits(no);
		return dao.getOne(no);
	}
	
	public void updateOne(BoardDTO dto) {
		dao.updateOne(dto);
	}
	
	public void deleteOne(int bno) {
		dao.deleteOne(bno);
	}
	
	public int getTotal() {
		return dao.getTotal();
	}
}
