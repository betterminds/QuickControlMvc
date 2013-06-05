package br.com.betterminds.controllers;

import br.com.betterminds.model.Client;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/clients")
@Controller
@RooWebScaffold(path = "clients", formBackingObject = Client.class)
public class ClientController {
}
