package main.service;

import java.util.List;
import java.util.Optional;
import main.Entities.Clothes;

public interface IClothesService extends IBaseService<Clothes, Integer> {

    //La palabra "optional" quiere decir que puede recibir uno solamente de los 2 parametros que le damos, 
    //o no puede recibor ninguno
    List<Clothes> getProductsWithFilters(Optional<Integer> lowerPrice, Optional<Integer> higherPrice);
}
