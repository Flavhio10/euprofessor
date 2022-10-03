package Persistencia;

import Modelo.Usuario;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

public class UsuarioDAO {

    private EntityManager gerenciador;

    public UsuarioDAO() {
        this.gerenciador = ConnectionFactory.getInstance().getGerenciador();
    }

    public void salvar(Usuario usuario) {
        //Objeto que controla um operação no banco de dados
        EntityTransaction transacao = gerenciador.getTransaction();
        //Inicia a transação
        transacao.begin();
        //armazena o objeto no banco
        gerenciador.persist(usuario);
        //Registra definitivamente as operações no banco
        transacao.commit();
    }

    public List<Usuario> listarTodos() {
        //String na linguagem HQL(linguagem que faz buscas em bancos com Hibernate)
        String consultaHql = "select usuario from Usuario as usuario where 1=1";
        //Objeto de consulta
        Query consulta = gerenciador.createQuery(consultaHql);
        //Método getResultList executa consulta no banco
        return consulta.getResultList();
    }

    public Usuario verificaEmail(Usuario usuario) {
        List<Usuario> listaUsuarios = new ArrayList<>();
        listaUsuarios.addAll(this.listarTodos());
        for (Usuario logado : listaUsuarios) {
            if (logado.getEmail().equals(usuario.getEmail())) {
                return logado;
            }
        }
        return null;
    }

}
