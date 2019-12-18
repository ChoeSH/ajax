package com.ajax.test.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

@WebServlet(name = "/FindController", urlPatterns = { "/find/*" })
public class FindController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Gson g = new Gson();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("application/json;charset=utf-8");
		String id = request.getParameter("id");
		List<String> list = new ArrayList<>();
		List<String> tmplist = new ArrayList<>();

		PrintWriter pw = response.getWriter();
		list.add("red");
		list.add("blue");
		list.add("yellow");
		list.add("white");
		list.add("black");
		list.add("pink");

		if (id == null) {
			pw.print(g.toJson(list));
			return;
		}
		for (int i = 0; i < list.size(); i++) {
			if (list.get(i).indexOf(id) != -1) {
				tmplist.add(list.get(i));
			}
		}
		pw.print(g.toJson(tmplist));
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}
}
