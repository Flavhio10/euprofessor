package Modelo;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Mensagem.class)
public abstract class Mensagem_ {

	public static volatile SingularAttribute<Mensagem, String> assunto;
	public static volatile SingularAttribute<Mensagem, Long> id;
	public static volatile SingularAttribute<Mensagem, Date> dataEnvio;
	public static volatile SingularAttribute<Mensagem, String> descricao;
	public static volatile SingularAttribute<Mensagem, Usuario> usuarioDestino;

}

