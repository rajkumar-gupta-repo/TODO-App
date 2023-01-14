package com.todo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.todo.entity.Todo;
import com.todo.service.todoservice;

@Controller
public class todocontroller {
	@Autowired
	todoservice todoservice;

	@GetMapping("/")
	public String index(Model m) {

		List<Todo> list = todoservice.getalldata();
		m.addAttribute("listoftodo", list);
		return "index";

	}

	@PostMapping("/add")
	public String addtodo(Todo todo) {
		System.out.println(todo);

		todoservice.addtodoservice(todo);

		return "redirect:/";
	}

	@GetMapping("/update/{id}")
	public String showform(@PathVariable int id, Model m) {

		Todo todo = todoservice.gettodo(id);
		
		m.addAttribute("todo", todo);

		return "update";
	}

	@GetMapping("/delete/{id}")
	public String delete(@PathVariable int id) {

		todoservice.deleteservice(id);

		return "redirect:/";

	}

}
