package main.api;

import java.util.List;
import main.Entities.Clothes;
import main.service.IClothesService;
import org.springframework.http.HttpStatus;
import static org.springframework.http.HttpStatus.NOT_FOUND;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;

@RestController
@RequestMapping("api/clothes")
public class ClothesControllerAPI {

    private final IClothesService clothesService;
    
    //Se hace el constructor
    public ClothesControllerAPI(IClothesService clothesService) {
        this.clothesService = clothesService;
    }

    @GetMapping("/all")//Mapeo de todos los controladors
    public List<Clothes> getAll() {
        return this.clothesService.getAll();
    }

    @GetMapping()//Se mapea la entidad
    public Clothes getById(@RequestParam("id") int id) {
        var clothes = this.clothesService.getById(id);
        if (clothes.isPresent())//Valida si hay stock de la prenda
        {
            return clothes.get();//En caso de que si haya continua
        }
        throw new ResponseStatusException(NOT_FOUND, "Unable to find resource");//En caso de que no haya, el programa tira este mensaje
    }

    @PostMapping()
    public Clothes save(@RequestBody Clothes clothes) {
        return this.clothesService.save(clothes);//Guarda las prendas que el usuario escoja
    }

    @DeleteMapping()
    public ResponseEntity<String> delete(@RequestBody Clothes clothes) {
        this.clothesService.delete(clothes);//Se encarga de eliminar la prenda que el usuario desee
        return new ResponseEntity<>(HttpStatus.OK);
    }
}
