
package Persistencia;

import Modelo.Postagem;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

/**
 *
 * @author Flávio
 */
public class PostagemDAO {
    private EntityManager gerenciador;

    public PostagemDAO() {
        this.gerenciador = ConnectionFactory.getInstance().getGerenciador();
    }

    public void salvar(Postagem postagem) {
        //Objeto que controla um operação no banco de dados
        EntityTransaction transacao = gerenciador.getTransaction();
        //Inicia a transação
        transacao.begin();
        //armazena o objeto no banco
        gerenciador.persist(postagem);
        //Registra definitivamente as operações no banco
        transacao.commit();
    }

    public List<Postagem> listarTodos() {
        //String na linguagem HQL(linguagem que faz buscas em bancos com Hibernate)
        String consultaHql = "select postagem from Postagem as postagem where 1=1";
        //Objeto de consulta
        Query consulta = gerenciador.createQuery(consultaHql);
        //Método getResultList executa consulta no banco
        return consulta.getResultList();
    }

    

}
