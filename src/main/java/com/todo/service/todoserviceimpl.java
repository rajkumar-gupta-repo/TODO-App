package com.todo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.todo.Dao.tododao;
import com.todo.entity.Todo;

@Service
public class todoserviceimpl implements todoservice {
	@Autowired
	tododao tododao;

	@Override
	public int addtodoservice(Todo todo) {

		tododao.adddata(todo);

		return 0;
	}

	@Override
	public List<Todo> getalldata() {

		List<Todo> list = tododao.getalllist();

		return list;
	}

	@Override
	public void deleteservice(int id) {

		tododao.deleteid(id);

	}

	@Override
	public Todo gettodo(int id) {

		Todo todo = tododao.gettododao(id);

		return todo;
	}

}
