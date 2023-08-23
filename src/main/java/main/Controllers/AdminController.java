package main.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/adminMode")
public class AdminController {

    public AdminController() {
    }

    @GetMapping()// Mapeo del modo Admin
    public String index() {
        return "AdminMode";
    }

}
