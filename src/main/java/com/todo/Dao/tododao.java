package com.todo.Dao;

import java.util.List;

import com.todo.entity.Todo;

public interface tododao {
	
	public int adddata(Todo todo);
	public List<Todo> getalllist();
	public Todo gettododao(int id);
	
	public void deleteid(int id);

}
