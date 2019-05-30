package com.internousdev.ecsite.action;

import java.sql.SQLException;

import java.util.Map;
import java.util.ArrayList;

import com.internousdev.ecsite.dao.ItemListDAO;
import com.internousdev.ecsite.dto.ItemListDTO;

import org.apache.struts2.interceptor.SessionAware;
import com.opensymphony.xwork2.ActionSupport;

public class ItemListAction extends ActionSupport implements SessionAware{

	private Map<String, Object> session;
	private ItemListDAO itemListDAO = new ItemListDAO();
	private ArrayList<ItemListDTO> itemList = new ArrayList<ItemListDTO>();

	public String execute() throws SQLException{

		itemList = itemListDAO.getItemListInfo ();
		session.put("itemList", itemList);

		if (session.containsKey("itemList")) {
			itemList = null;
		}

		String result = SUCCESS;

		return result;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public ArrayList<ItemListDTO> getItemList() {
		return itemList;
	}

	public void setItemList(ArrayList<ItemListDTO> itemList) {
		this.itemList = itemList;
	}


}
