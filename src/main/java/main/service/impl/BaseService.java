package main.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import main.service.IBaseService;


//Se implementa el IBaseService y se asignan las funciones de los metodos para saber qur hace cada uno
public class BaseService<T, Y> implements IBaseService<T, Y> {//Se pasan los parametros T y Y

    protected final CrudRepository<T, Y> repository;

    public BaseService(CrudRepository<T, Y> repository) {
        this.repository = repository;
    }

    public List<T> getAll() {
        return (List<T>) this.repository.findAll();//Busqueda de usuario por medio de crud
    }

    public T save(T item) {
        return this.repository.save(item);//Guarda el item que este guardado dentro de la variable T
    }

    public Optional<T> getById(Y id) {
        return this.repository.findById(id);// encuentra la imagen o usuario por id
    }

    public void delete(T item) {
        this.repository.delete(item);// metodo para borrar items de las listas
    }
}
