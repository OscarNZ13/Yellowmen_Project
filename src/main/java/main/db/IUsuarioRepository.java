package main.db;

import org.springframework.data.jpa.repository.JpaRepository;

import main.Entities.Usuario;

public interface IUsuarioRepository extends JpaRepository<Usuario, Long> {//se usa el repositorio de jpa para el CRUD

    Usuario findByUsername(String username);//Busqueda de usuario por Nombre de Usuario

    Usuario findByUsernameAndPassword(String username, String Password);//Busqueda de usuario y contraseña

    Usuario findByUsernameOrCorreo(String username, String correo);//Busqueda de usuario y correo

    boolean existsByUsernameOrCorreo(String username, String correo);//Valida si el usuario y el correo son existentes
}