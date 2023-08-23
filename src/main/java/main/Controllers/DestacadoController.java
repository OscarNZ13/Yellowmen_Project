package main.Controllers;

import java.util.Optional;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import main.Entities.Clothes;
import main.service.IClothesService;

@Controller
@RequestMapping("/destacado")
public class DestacadoController {
    // Variable de tipo final y que no puede ser cambiada mas adelante
    private final IClothesService clothesService;

    public DestacadoController(IClothesService clothesService) {// Constructor de la clase
        this.clothesService = clothesService;
    }

    @GetMapping()
    public String Destacado(Model model, @RequestParam("lowerPrice") Optional<Integer> lowerPrice, @RequestParam("higherPrice") Optional<Integer> higherPrice) {
        model.addAttribute("titulo", "Yellow Men");
        var baseClothes = new Clothes();//Cambio del nombre de la variable dentro del metodo
        model.addAttribute("clothesDefault", baseClothes);
        model.addAttribute("clothes", this.clothesService.getProductsWithFilters(lowerPrice, higherPrice));//Llama los productos destacados y los filtra por orden de precio
        return "destacado";
    }

}
