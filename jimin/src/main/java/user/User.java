//javabeens �ڹٺ���
package user;

public class User {
	private String userID;
	private String userPassword;
	private String userPassword_confirm;
	private String userName;
	private String userEmail;
	private String userPhonenumber;
	
	
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public void setUserPassword_confirm(String userPassword_confirm) {
		this.userPassword_confirm = userPassword_confirm;
	}
	public String getUserPassword_confirm() {
		return userPassword;
	}
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserPhonenumber() {
		return userPhonenumber;
	}
	public void setUserPhonenumber(String userPhonenumber) {
		this.userPhonenumber = userPhonenumber;
	}

}
