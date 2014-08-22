package com.aptech.obj;

import java.sql.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Order.class)
public abstract class Order_ {

	public static volatile SingularAttribute<Order, String> code;
	public static volatile SingularAttribute<Order, Integer> user_id;
	public static volatile SingularAttribute<Order, Date> created;
	public static volatile SingularAttribute<Order, Integer> id;
	public static volatile SingularAttribute<Order, Integer> status;

}

