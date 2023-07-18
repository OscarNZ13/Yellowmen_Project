
package main.db;

import java.util.List;
import main.Entities.Clothes;
import org.springframework.data.repository.CrudRepository;


public interface IClothesRepository extends CrudRepository<Clothes, Integer> {

    List<Clothes> findAllByPrecioBetween(int lowerPrice, int higherPrice);

    List<Clothes> findAllByPrecioGreaterThanEqual(int lowerPrice);

    List<Clothes> findAllByPrecioIsLessThanEqual(int HigherPrice);
}