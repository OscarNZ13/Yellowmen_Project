
package main.service.impl;

import java.util.List;
import java.util.Optional;
import main.Entities.Clothes;
import main.db.IClothesRepository;
import main.service.IClothesService;
import org.springframework.stereotype.Service;

@Service
public class ClothesService extends BaseService<Clothes, Integer> implements IClothesService {

    //here we have to create this variable because of syntax we can't see the this.repository as a IproductRepository
    private final IClothesRepository clothesRepository;

    public ClothesService(IClothesRepository clothesRepository) {
        super(clothesRepository);
        this.clothesRepository = clothesRepository;
    }

    public List<Clothes> getProductsWithFilters(Optional<Integer> lowerPrice, Optional<Integer> higherPrice) {

        if (lowerPrice.isPresent() && higherPrice.isPresent()) {
            return this.clothesRepository.findAllByPrecioBetween(lowerPrice.get(), higherPrice.get());
        }

        if (lowerPrice.isPresent()) {
            return this.clothesRepository.findAllByPrecioGreaterThanEqual(lowerPrice.get());
        }

        if (higherPrice.isPresent()) {
            return this.clothesRepository.findAllByPrecioIsLessThanEqual(higherPrice.get());
        }

        return (List<Clothes>) this.clothesRepository.findAll();
    }
}
