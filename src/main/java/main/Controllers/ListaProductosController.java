
package main.Controllers;

import java.util.Optional;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import main.Entities.Clothes;
import main.service.IClothesService;

@Controller
public class ListaProductosController {
    private final IClothesService clothesService;

    public ListaProductosController(IClothesService clothesService) {
        this.clothesService = clothesService;
    }

    @GetMapping("/listaProductos")
    public String ListaProcutos(Model model, @RequestParam("lowerPrice") Optional<Integer> lowerPrice,
            @RequestParam("higherPrice") Optional<Integer> higherPrice) {
        model.addAttribute("titulo", "Yellow Men");
        var baseClothes = new Clothes();
        model.addAttribute("clothesDefault", baseClothes);
        model.addAttribute("clothes", this.clothesService.getProductsWithFilters(lowerPrice, higherPrice));
        return "listaProductos";
    }
}
