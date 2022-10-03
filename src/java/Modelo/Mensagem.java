/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 *
 * @author Flávio
 */
@Entity
public class Mensagem {

    @Id
    @GeneratedValue
    private long id;
    private Date dataEnvio;
    private String assunto;
    private String descricao;
    private Usuario usuarioDestino;

    public Mensagem(Date dataEnvio, String assunto, String descricao, Usuario usuarioDestino) {
        this.dataEnvio = dataEnvio;
        this.assunto = assunto;
        this.descricao = descricao;
        this.usuarioDestino = usuarioDestino;
    }

    public Date getDataEnvio() {
        return dataEnvio;
    }

    public void setDataEnvio(Date dataEnvio) {
        this.dataEnvio = dataEnvio;
    }

    public String getAssunto() {
        return assunto;
    }

    public void setAssunto(String assunto) {
        this.assunto = assunto;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public Usuario getUsuarioDestino() {
        return usuarioDestino;
    }

    public void setUsuarioDestino(Usuario usuarioDestino) {
        this.usuarioDestino = usuarioDestino;
    }

}
