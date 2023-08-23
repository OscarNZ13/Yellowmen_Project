package main.service;

import java.util.List;
import java.util.Optional;


//Esta interfaz tiene que ser implementada en todos los service del proyecto
public interface IBaseService<T, Y> {//Clase con parametros T e Y

    List<T> getAll();//Se utiliza una lista con la variable T(definida en parametros) para que mustre todos los resultados

    T save(T item);//Guarda un registro

    void delete(T item);

    Optional<T> getById(Y id);
}
