
package main.Controllers;

import main.Entities.Usuario;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import main.service.impl.UsuarioService;

@Controller
public class UserController {
    @Autowired
    private UsuarioService usuarioService;

    @GetMapping("/users")//Mapeo de los usuarios
    public String index(Model model) {
        model.addAttribute("titulo", "Yellow Men");
        model.addAttribute("usuariosDefault", new Usuario());
        model.addAttribute("usuarios", this.usuarioService.getUsuarios());//Se llaman a los usuarios para darles un atributo
        var usuarios = usuarioService.getUsuarios();
        model.addAttribute("usuarios", usuarios);
        model.addAttribute("totalUsuarios", usuarios.size());//Es para conocer la cantidad de usuarios que estan registrados
        return "users";
    }
}
