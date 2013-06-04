// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.betterminds.model;

import br.com.betterminds.model.Endereco;
import br.com.betterminds.model.EnderecoController;
import br.com.betterminds.model.Telefone;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect EnderecoController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String EnderecoController.create(@Valid Endereco endereco, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, endereco);
            return "enderecoes/create";
        }
        uiModel.asMap().clear();
        endereco.persist();
        return "redirect:/enderecoes/" + encodeUrlPathSegment(endereco.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String EnderecoController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Endereco());
        return "enderecoes/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String EnderecoController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("endereco", Endereco.findEndereco(id));
        uiModel.addAttribute("itemId", id);
        return "enderecoes/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String EnderecoController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("enderecoes", Endereco.findEnderecoEntries(firstResult, sizeNo));
            float nrOfPages = (float) Endereco.countEnderecoes() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("enderecoes", Endereco.findAllEnderecoes());
        }
        return "enderecoes/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String EnderecoController.update(@Valid Endereco endereco, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, endereco);
            return "enderecoes/update";
        }
        uiModel.asMap().clear();
        endereco.merge();
        return "redirect:/enderecoes/" + encodeUrlPathSegment(endereco.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String EnderecoController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, Endereco.findEndereco(id));
        return "enderecoes/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String EnderecoController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Endereco endereco = Endereco.findEndereco(id);
        endereco.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/enderecoes";
    }
    
    void EnderecoController.populateEditForm(Model uiModel, Endereco endereco) {
        uiModel.addAttribute("endereco", endereco);
        uiModel.addAttribute("telefones", Telefone.findAllTelefones());
    }
    
    String EnderecoController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}