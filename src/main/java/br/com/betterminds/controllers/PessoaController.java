package br.com.betterminds.controllers;

import br.com.betterminds.model.Pessoa;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/pessoas")
@Controller
@RooWebScaffold(path = "pessoas", formBackingObject = Pessoa.class)
public class PessoaController {
}
