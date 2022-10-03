package Modelo;

import java.io.Serializable;
import java.util.Objects;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 *
 * @author Flávio
 */
@Entity
public class Usuario implements Serializable {

    @Id
    @GeneratedValue
    private long id;
    public static final int PROFESSOR = 1;
    public static final int ALUNO = 2;
    public static final int VISITANTE = 3;
    private String primeiroNome;
    private String ultimoNome;
    private String formacaoAcademica;
    private String email;
    private String senha;
    private int nivel;

    public Usuario() {
    }

    public Usuario(String primeiroNome, String email, String senha, int nivel) {
        this.primeiroNome = primeiroNome;
        this.email = email;
        this.senha = senha;
        this.nivel = nivel;
    }

    public Usuario(String email, String senha) {
        this.email = email;
        this.senha = senha;
    }

    public Usuario(long id, String primeiroNome, String ultimoNome, String formacaoAcademica, String email, String senha, int nivel) {
        this.id = id;
        this.primeiroNome = primeiroNome;
        this.ultimoNome = ultimoNome;
        this.formacaoAcademica = formacaoAcademica;
        this.email = email;
        this.senha = senha;
        this.nivel = nivel;
    }

    public String getPrimeiroNome() {
        return primeiroNome;
    }

    public String getUltimoNome() {
        return ultimoNome;
    }

    public String getFormacaoAcademica() {
        return formacaoAcademica;
    }

    public String getEmail() {
        return email;
    }

    public int getNivel() {
        return nivel;
    }

    @Override
    public String toString() {
        return primeiroNome;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 19 * hash + Objects.hashCode(this.email);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Usuario other = (Usuario) obj;
        if (!Objects.equals(this.email, other.email)) {
            return false;
        }
        return true;
    }
    
    

}
