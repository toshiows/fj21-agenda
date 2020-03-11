package br.com.caelum.mvc.servlet;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.mvc.logica.Logica;

@WebServlet("/mvc")
public class ControllerServlet extends HttpServlet{

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServerException, IOException, ServletException{
		String parametro = request.getParameter("logica");
		String nomeDaClasse = "br.com.caelum.mvc.logica." + parametro;
		
		try {
			Class classe = Class.forName(nomeDaClasse);
			
			Logica logica = (Logica) classe.newInstance();
			String pagica = logica.executa(request, response);
			
			request.getRequestDispatcher(pagica).forward(request, response);
			
		} catch(Exception e) {
			throw new ServletException("A logica causou uma excecao", e);
		}
	}
}
