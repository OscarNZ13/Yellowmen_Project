package main.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {
    @GetMapping("/")
    public String Index(Model model){
        model.addAttribute("titulo", "Yellowmen");
        //Acá se devuelve el nombre del template/plantilla, o sea archivo html:
        return "index";
    }
}
