package br.com.betterminds.controllers;

import br.com.betterminds.model.Endereco;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/enderecoes")
@Controller
@RooWebScaffold(path = "enderecoes", formBackingObject = Endereco.class)
public class EnderecoController {
}
