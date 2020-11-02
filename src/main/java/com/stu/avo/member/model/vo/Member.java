package com.stu.avo.member.model.vo;

public class Member {
	private int userCode;
	private String userId;
	private String userPwd;
	private String userName;
	private String userBirth;
	private String userGender;
	private String userAddress;
	private String userPhone;
	
	public Member() {}

	public Member(int userCode, String userId, String userPwd, String userName, String userBirth, String userGender,
			String userAddress, String userPhone) {
		super();
		this.userCode = userCode;
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.userBirth = userBirth;
		this.userGender = userGender;
		this.userAddress = userAddress;
		this.userPhone = userPhone;
	}

	public int getUserCode() {
		return userCode;
	}

	public void setUserCode(int userCode) {
		this.userCode = userCode;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserBirth() {
		return userBirth;
	}

	public void setUserBirth(String userBirth) {
		this.userBirth = userBirth;
	}

	public String getUserGender() {
		return userGender;
	}

	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	@Override
	public String toString() {
		return "Member [userCode=" + userCode + ", userId=" + userId + ", userPwd=" + userPwd + ", userName=" + userName
				+ ", userBirth=" + userBirth + ", userGender=" + userGender + ", userAddress=" + userAddress
				+ ", userPhone=" + userPhone + "]";
	};
	
}
