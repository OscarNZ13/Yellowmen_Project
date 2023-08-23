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
@RequestMapping("/adminCRUD")
public class adminCRUDController {

    private final IClothesService clothesService;
    
    //Creacion del constructor
    public adminCRUDController(IClothesService clothesService) {
        this.clothesService = clothesService;
    }

    @GetMapping()//Mapeo del crud
    public String CRUDController(Model model, @RequestParam("lowerPrice") Optional<Integer> lowerPrice, @RequestParam("higherPrice") Optional<Integer> higherPrice) {
        model.addAttribute("titulo", "Yellow Men");
        var baseClothes = new Clothes();
        model.addAttribute("clothesDefault", baseClothes);
        //Se filtran los productos segun lo que el usuario haga
        model.addAttribute("clothes", this.clothesService.getProductsWithFilters(lowerPrice, higherPrice));
        return "adminCRUD";
    }
}
