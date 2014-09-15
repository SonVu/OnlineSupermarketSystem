package com.aptech.obj;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(ProductReview.class)
public abstract class ProductReview_ {

	public static volatile SingularAttribute<ProductReview, Product> product;
	public static volatile SingularAttribute<ProductReview, Integer> rate;
	public static volatile SingularAttribute<ProductReview, String> comment;
	public static volatile SingularAttribute<ProductReview, Integer> id;
	public static volatile SingularAttribute<ProductReview, User> user;

}

