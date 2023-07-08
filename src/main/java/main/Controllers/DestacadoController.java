package main.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/destacado")
public class DestacadoController {

    public DestacadoController() {
    }

    @GetMapping()
    public String Destacado(Model model) {
        model.addAttribute("titulo", "Yellow Men");
        return "Destacado";
    }
}