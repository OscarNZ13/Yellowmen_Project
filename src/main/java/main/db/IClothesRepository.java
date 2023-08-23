
package main.db;

import java.util.List;
import main.Entities.Clothes;
import org.springframework.data.repository.CrudRepository;


public interface IClothesRepository extends CrudRepository<Clothes, Integer> {//Se utiliza el repositorio de springboot

    List<Clothes> findAllByPrecioBetween(int lowerPrice, int higherPrice);//Filtra las prendas entre el precio min y max que el usuario desee

    List<Clothes> findAllByPrecioGreaterThanEqual(int lowerPrice);

    List<Clothes> findAllByPrecioIsLessThanEqual(int HigherPrice);
}