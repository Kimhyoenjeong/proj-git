package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet; //<= java.sql.connection

public class UserDAO {//database access object �����ͺ��̽� ���ٰ�ü-> ȸ�������� �ְų� �ҷ��� �� ���
	
	private Connection conn; //�����ͺ��̽��� �����ϰ����ִ� ��ü
	private PreparedStatement pstmt; //Sql injection�� ���
	private ResultSet rs;  
	
	//control+shift+o => java.sql.connection
	
	
	//������ mysql�� ������ �ϰ� ���ִ� �κ�
	public UserDAO() { 
		try {
			String dbURL ="jdbc:mysql://127.0.0.1:3306/morae";
			String dbID = "root";
			String dbPassword = "1234";
			Class.forName("com.mysql.jdbc.Driver"); //mysql�� ������ �� �ֵ��� ���ִ� �Ű�ü ������ �ϴ� ���̺귯��
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace(); //����ó��-> ������ ���� �����
		}
	}
	
	//������ �α����� �õ��ϴ� �ϳ��� �Լ�
	public int login(String userID, String userPassword) {
		//������ SQL�� �Է��� ����
		String SQl = "SELECT userPassword FROM USER WHERE userID = ?";//user table���� �ش� ������� ��й�ȣ�� ������ �� �� �ֵ����Ѵ�.
		try {
			pstmt = conn.prepareStatement(SQl); //��� ������ ���� ���� pstmt�� �ν��Ͻ��� ������ �´�
			pstmt.setString(1, userID);// sql injection ���-> sql�� �Է��� ������ �غ��س���(���� ����) ?(����ǥ)���� ���� �̸� �־���� ���߿� ?�� �ش��ϴ� �������� userID�� �־��� => �����ϴ��� Ȯ��
			rs = pstmt.executeQuery(); //������ ����� ����
			//���̵� �ִٸ�
			if (rs.next()) {
				if(rs.getString(1).equals(userPassword)) {//������ �õ��� userPassword�� sql�� userPassword�� �����ϴٸ�
					return 1; //�α��� ����
				} else {
					return 0; //��й�ȣ ����ġ
				}
			}
			return -1; // ���̵� ����
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		return -2; //�����ͺ��̼� ����;
	}
	
	public int join(User user) {
		//user class�� ���� ���� �� �ִ� �ϳ��� �ν��Ͻ��� ��
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
