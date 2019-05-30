package com.internousdev.ecsite.action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.SessionAware;

import java.sql.SQLException;
import java.util.Map;
import java.util.ArrayList;
import com.internousdev.ecsite.dto.ItemListDTO;

public class ItemListDeleteConfirmAction extends ActionSupport implements SessionAware{

	private Map<String, Object> session;
	ArrayList<ItemListDTO> itemListDTO = new ArrayList<ItemListDTO>();


	public String execute() throws SQLException {

		String result = SUCCESS;
		return result;

	}

	public void delete() throws SQLException{


	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}
