
package main.Controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import main.service.impl.UsuarioService;

@Controller
public class UserController {
    @Autowired
    private UsuarioService usuarioService;

    @GetMapping("/users")
    public String index(Model model) {
        model.addAttribute("titulo", "Yellow Men");
        var usuarios = usuarioService.getUsuarios();
        model.addAttribute("usuarios", usuarios);
        model.addAttribute("totalUsuarios", usuarios.size());
        return "users";
    }
}
