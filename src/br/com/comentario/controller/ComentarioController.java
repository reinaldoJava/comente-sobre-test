package br.com.comentario.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.comentario.model.Comentario;
import br.com.comentario.service.ComentarioService;

@Controller
public class ComentarioController {

	@RequestMapping(value = "comentar/adiciona", method = RequestMethod.POST)
	public String adiciona(Comentario comentario, Model model) {
		ComentarioService dao = new ComentarioService();
		dao.adiciona(comentario);
		model.addAttribute("comentarios", dao.lista());
		return "lista";

	}

	@RequestMapping(value = "/{assunto}")
	public String comentar(@PathVariable String assunto, Model model) {
		Comentario comentario = new Comentario();
		comentario.setAssunto(assunto);
		model.addAttribute("comentario", comentario);
		return "comente-sobre";
	}

}
