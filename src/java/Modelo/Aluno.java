/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.io.Serializable;

/**
 *
 * @author Flávio
 */

public class Aluno extends Usuario implements Serializable {

    public Aluno(long id, String primeiroNome, String ultimoNome, String formacaoAcademica, String email, String senha, int nivel) {
        super(id, primeiroNome, ultimoNome, formacaoAcademica, email, senha, nivel);
    }

    
}
