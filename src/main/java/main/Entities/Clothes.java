package main.Entities;

import jakarta.persistence.*;

@Entity
@Table(name = "prendas")
public class Clothes {

    @Id
    @Column(name = "id_prenda")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String id;
    private String nombre_prenda;
    private String descripcion;
    private String ruta_imagen;
    private int precio;
    private int esDestacado;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNombre_prenda() {
        return nombre_prenda;
    }

    public void setNombre_prenda(String nombre_prenda) {
        this.nombre_prenda = nombre_prenda;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getRuta_imagen() {
        return ruta_imagen;
    }

    public void setRuta_imagen(String ruta_imagen) {
        this.ruta_imagen = ruta_imagen;
    }

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }

    public int getEsDestacado() {
        return esDestacado;
    }

    public void setEsDestacado(int esDestacado) {
        this.esDestacado = esDestacado;
    }

}
