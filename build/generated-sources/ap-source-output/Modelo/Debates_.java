package Modelo;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Debates.class)
public abstract class Debates_ {

	public static volatile SingularAttribute<Debates, String> assunto;
	public static volatile SingularAttribute<Debates, Long> id;
	public static volatile SingularAttribute<Debates, Date> dataInicial;
	public static volatile SingularAttribute<Debates, Date> dataFinal;
	public static volatile SingularAttribute<Debates, String> descricao;
	public static volatile SingularAttribute<Debates, Integer> participantes;

}

