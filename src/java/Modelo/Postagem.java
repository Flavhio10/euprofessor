/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;

/**
 *
 * @author Flávio
 */
@Entity
public class Postagem implements Serializable {

    @Id
    @GeneratedValue
    private long id;
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date dataPostagem;
    @OneToOne
    private Usuario usuario;
    private String texto;

    public Postagem(Date dataPostagem, Usuario usuario, String texto) {
        this.dataPostagem = dataPostagem;
        this.usuario = usuario;
        this.texto = texto;
    }

    public Postagem() {
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Date getDataPostagem() {
        return dataPostagem;
    }

    public void setDataPostagem(Date dataPostagem) {
        this.dataPostagem = dataPostagem;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public String getTexto() {
        return texto;
    }

    public void setTexto(String texto) {
        this.texto = texto;
    }

    @Override
    public String toString() {
        return "Postagem{" + "id=" + id + ", dataPostagem=" + dataPostagem + ", usuario=" + usuario + ", texto=" + texto + '}';
    }

}
