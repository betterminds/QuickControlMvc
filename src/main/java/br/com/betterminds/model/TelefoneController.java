package br.com.betterminds.model;

import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/telefones")
@Controller
@RooWebScaffold(path = "telefones", formBackingObject = Telefone.class)
public class TelefoneController {
}
