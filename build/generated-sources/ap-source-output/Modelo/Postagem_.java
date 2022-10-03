package Modelo;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Postagem.class)
public abstract class Postagem_ {

	public static volatile SingularAttribute<Postagem, String> texto;
	public static volatile SingularAttribute<Postagem, Date> dataPostagem;
	public static volatile SingularAttribute<Postagem, Usuario> usuario;
	public static volatile SingularAttribute<Postagem, Long> id;

}

