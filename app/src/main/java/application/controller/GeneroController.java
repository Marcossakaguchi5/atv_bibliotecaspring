package application.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import application.model.Genero;
import application.model.GeneroRepository;

@Controller
public class GeneroController {
    

    @Autowired
    private GeneroRepository generoRepo;

    @RequestMapping("/genero")
    public String list(Model model) {
        model.addAttribute("generos", generoRepo.findAll());
        return "WEB-INF/genero/list.jsp";
    }

    @RequestMapping("/insertG")
    public String insert() {
        return "WEB-INF/genero/insert.jsp";
    }

    @RequestMapping(value = "/insertG", method = RequestMethod.POST)
    public String insert(@RequestParam("nome") String nome) {
        Genero genero = new Genero();
        genero.setNome(nome);
    

        generoRepo.save(genero);

        return "redirect:/genero";
    }

    @RequestMapping("/updateG")
    public String update(Model model, @RequestParam("id") int id) {
        Optional<Genero> genero = generoRepo.findById(id);

        if(!genero.isPresent()) {
            return "redirect:/genero";
        }

        model.addAttribute("genero", genero.get());
        return "WEB-INF/genero/update.jsp";
    }

    @RequestMapping(value = "/updateG", method = RequestMethod.POST)
    public String update(
        @RequestParam("nome") String nome,
        @RequestParam("id") int id
    ) {
        Optional<Genero> genero = generoRepo.findById(id);
        if(!genero.isPresent()) {
            return "redirect:/genero";
        }

        genero.get().setNome(nome);
       

        generoRepo.save(genero.get());
        return "redirect:/genero";
    }

    @RequestMapping("/deleteG")
    public String delete(Model model, @RequestParam("id") int id) {
        Optional<Genero> genero = generoRepo.findById(id);

        if(!genero.isPresent()) {
            return "redirect:/genero";
        }

        model.addAttribute("genero", genero.get());
        return "WEB-INF/genero/delete.jsp";
    }

    @RequestMapping(value = "/deleteG", method = RequestMethod.POST)
    public String delete(@RequestParam("id") int id) {
        generoRepo.deleteById(id);
        return "redirect:/genero";
    }

}
