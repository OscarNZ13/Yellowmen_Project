package main.db;

import org.springframework.data.jpa.repository.JpaRepository;

import main.Entities.Rol;

public interface IRolRepository extends JpaRepository<Rol, Long> {//se usa el repositorio de jpa para el CRUD

}
