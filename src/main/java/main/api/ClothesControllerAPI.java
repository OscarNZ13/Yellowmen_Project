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
@RequestMapping("api/product")
public class ClothesControllerAPI {

    private final IClothesService clothesService;

    public ClothesControllerAPI(IClothesService clothesService) {
        this.clothesService = clothesService;
    }

    @GetMapping("/all")
    public List<Clothes> getAll() {
        return this.clothesService.getAll();
    }

    @GetMapping()
    public Clothes getById(@RequestParam("id") int id) {
        var clothes = this.clothesService.getById(id);
        if (clothes.isPresent())
        {
            return clothes.get();
        }
        throw new ResponseStatusException(NOT_FOUND, "Unable to find resource");
    }

    @PostMapping()
    public Clothes save(@RequestBody Clothes clothes) {
        return this.clothesService.save(clothes);
    }

    @DeleteMapping()
    public ResponseEntity<String> delete(@RequestBody Clothes clothes) {
        this.clothesService.delete(clothes);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}
