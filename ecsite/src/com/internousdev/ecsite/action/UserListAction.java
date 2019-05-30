package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.Map;
import java.util.ArrayList;

import com.internousdev.ecsite.dao.UserListDAO;
import com.internousdev.ecsite.dto.UserListDTO;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.SessionAware;


public class UserListAction extends ActionSupport implements SessionAware{

	private Map<String, Object> session;

	private UserListDAO userListDAO = new UserListDAO();

	private ArrayList<UserListDTO> userList = new ArrayList<UserListDTO>();

	public String execute() throws SQLException{

		userList = userListDAO.getUserListInfo();

		String result = SUCCESS;

		return result;

	}
	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public ArrayList<UserListDTO> getUserList() {
		return userList;
	}

	public void setUserList(ArrayList<UserListDTO> userList) {
		this.userList = userList;
	}
}
