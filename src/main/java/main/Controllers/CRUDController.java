
package main.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/test")
public class CRUDController {
    public CRUDController(){
        
    }
    @GetMapping()
    public String CRUDController(Model model){
        return "test";
    }
}
