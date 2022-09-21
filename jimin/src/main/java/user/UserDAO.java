package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet; //<= java.sql.connection

public class UserDAO {//database access object 데이터베이스 접근객체-> 회원정보를 넣거나 불러올 때 사용
	
	private Connection conn; //데이터베이스에 접근하게해주는 객체
	private PreparedStatement pstmt; //Sql injection을 방어
	private ResultSet rs;  
	
	//control+shift+o => java.sql.connection
	
	
	//실제로 mysql에 접속을 하게 해주는 부분
	public UserDAO() { 
		try {
			String dbURL ="jdbc:mysql://127.0.0.1:3306/morae";
			String dbID = "root";
			String dbPassword = "1234";
			Class.forName("com.mysql.jdbc.Driver"); //mysql에 접속할 수 있도록 해주는 매개체 역할을 하는 라이브러리
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace(); //오류처리-> 오류가 뭔지 출력함
		}
	}
	
	//실제로 로그인을 시도하는 하나의 함수
	public int login(String userID, String userPassword) {
		//실제로 SQL에 입력할 문장
		String SQl = "SELECT userPassword FROM USER WHERE userID = ?";//user table에서 해당 사용자의 비밀번호를 가지고 올 수 있도록한다.
		try {
			pstmt = conn.prepareStatement(SQl); //어떠한 정해진 문장 삽입 pstmt에 인스턴스를 가지고 온다
			pstmt.setString(1, userID);// sql injection 방어-> sql에 입력할 문장을 준비해놓고(위에 문장) ?(물음표)같은 것을 미리 넣어놓고 나중에 ?에 해당하는 내용으로 userID를 넣어줌 => 존재하는지 확인
			rs = pstmt.executeQuery(); //실행한 결과를 넣음
			//아이디가 있다면
			if (rs.next()) {
				if(rs.getString(1).equals(userPassword)) {//접속을 시도한 userPassword와 sql의 userPassword가 동일하다면
					return 1; //로그인 성공
				} else {
					return 0; //비밀번호 불일치
				}
			}
			return -1; // 아이디가 없음
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		return -2; //데이터베이서 오류;
	}
	
	public int join(User user) {
		//user class를 통해 만들 수 있는 하나의 인스턴스가 됨
		String SQL = "INSERT INTO USER VALUES (?, ?, ?, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getUserID());
			pstmt.setString(2, user.getUserPassword());
			pstmt.setString(3, user.getUserPassword_confirm());
			pstmt.setString(4, user.getUserName());
			pstmt.setString(5, user.getUserEmail());
			pstmt.setString(6, user.getUserPhonenumber());
			return pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
}
