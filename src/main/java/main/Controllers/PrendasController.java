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
@RequestMapping("/prendas")
public class PrendasController {
    private final IClothesService clothesService;

    public PrendasController(IClothesService clothesService) {
        this.clothesService = clothesService;
    }

    @GetMapping()
    public String Prendas(Model model, @RequestParam("lowerPrice") Optional<Integer> lowerPrice, @RequestParam("higherPrice") Optional<Integer> higherPrice) {
        model.addAttribute("titulo", "Yellow Men");
        var baseClothes = new Clothes();
        model.addAttribute("clothesDefault", baseClothes);
        model.addAttribute("clothes", this.clothesService.getProductsWithFilters(lowerPrice, higherPrice));
        return "prendas";
    }
}
