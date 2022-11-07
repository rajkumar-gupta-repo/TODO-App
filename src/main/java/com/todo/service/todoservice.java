package com.todo.service;

import java.util.List;

import com.todo.entity.Todo;

public interface todoservice {
	public int addtodoservice(Todo todo);

	public List<Todo> getalldata();

	public Todo gettodo(int id);

	public void deleteservice(int id);

}
