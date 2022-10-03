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
public class Debates {

    @Id
    @GeneratedValue
    private long id;
    private String assunto;
    private String descricao;
    private int participantes;
    private Date dataInicial;
    private Date dataFinal;

    public Debates(long id, String assunto, String descricao, int participantes, Date dataInicial, Date dataFinal) {
        this.id = id;
        this.assunto = assunto;
        this.descricao = descricao;
        this.participantes = participantes;
        this.dataInicial = dataInicial;
        this.dataFinal = dataFinal;
    }

    public String getAssunto() {
        return assunto;
    }

    public String getDescricao() {
        return descricao;
    }

    public int getParticipantes() {
        return participantes;
    }

    public Date getDataInicial() {
        return dataInicial;
    }

    public Date getDataFinal() {
        return dataFinal;
    }

}
