package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import com.opensymphony.xwork2.ActionSupport;

import com.internousdev.ecsite.dao.ItemListDeleteCompleteDAO;


public class ItemListDeleteCompleteAction extends ActionSupport implements SessionAware{

	private Map<String, Object> session;
	private String message;
	private ItemListDeleteCompleteDAO itemListDeleteCompleteDAO = new ItemListDeleteCompleteDAO();

	public String execute() throws SQLException{

		delete();

		String result = SUCCESS;

		return result;
	}

	public void delete() throws SQLException {


		int res = itemListDeleteCompleteDAO.ItemListDelete();

		if (res > 0) {
			session.remove("itemList");
			setMessage("商品情報を全て削除しました。");
		} else if (res == 0) {
			setMessage("商品情報の削除に失敗しました。");
		}
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

}
