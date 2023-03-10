package se.board.model.vo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import se.member.connection.JDBCTemplate;

public class BoardDao {
	public int getCountBoard(Connection conn) {
		int result = 0;
		String sql = "select count(*) cnt from board";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next()) {				
				result = rs.getInt("cnt");	
			}			
		} catch (SQLException e) {			
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}		
		return result;
	}
	
	public List<BoardVo> getBoardList(Connection conn){
		List<BoardVo> result = null;
		String sql = "select BOARD_NUM, BOARD_TITLE, BOARD_WRITER, BOARD_CONTENT, BOARD_DATE from board";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			result = new ArrayList<BoardVo>();
			while(rs.next()){	
				BoardVo vo = new BoardVo();
				vo.setBoardContent(rs.getString("board_Content"));
				vo.setBoardDate(rs.getDate("board_Date"));
				vo.setBoardNum(rs.getInt("board_Num"));
				vo.setBoardTitle(rs.getString("board_Title"));
				vo.setBoardWriter(rs.getString("board_Writer"));				
				result.add(vo);
			}			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rs);
			JDBCTemplate.close(pstmt);
		}
		return result;
	}
	
	public int getAddList(Connection conn, BoardVo vo) {
		int result = 0;
		
		String query="insert into board values((select nvl(max(board_num),0) +1 from board),"
					+ "? ,?, ?, sysdate)";
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, vo.getBoardTitle());
			pstmt.setString(2, vo.getBoardWriter());
			pstmt.setString(3, vo.getBoardContent());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}		
		return result;
	}
	
	
	public int getUpdateList(Connection conn, BoardVo vo) {
		int result = 0;
		String query = "update board set board_title = ?, board_writer = ?, board_content = ?";
		
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, vo.getBoardTitle());
			pstmt.setString(2, vo.getBoardWriter());
			pstmt.setString(3, vo.getBoardContent());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}	
		return result;
		
	}
	
	public int getRemoveList(Connection conn, BoardVo vo) {
		int result = 0;
		
		String query = "delete from board where id = ?";
		
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, vo.getBoardNum());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}	
		return result;
		
	}
	
	
	
	
	

}