package com.aptech.obj;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(OrderDetail.class)
public abstract class OrderDetail_ {

	public static volatile SingularAttribute<OrderDetail, Double> quantity;
	public static volatile SingularAttribute<OrderDetail, Double> price;
	public static volatile SingularAttribute<OrderDetail, Integer> product_id;
	public static volatile SingularAttribute<OrderDetail, Double> discount;
	public static volatile SingularAttribute<OrderDetail, Integer> id;
	public static volatile SingularAttribute<OrderDetail, Integer> order_id;

}

