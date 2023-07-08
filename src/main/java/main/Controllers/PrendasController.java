package main.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/prendas")
public class PrendasController {

    public PrendasController() {
    }

    @GetMapping()
    public String Prendas(Model model){
        model.addAttribute("titulo", "Yellow Men");
        return "Prendas";
    }
}
