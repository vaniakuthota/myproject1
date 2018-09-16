package com.niit.dao;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.configuration.Dbconfiguration;
import com.niit.models.Product;
import junit.framework.TestCase;

public class ProductDaoImplTest extends TestCase {
	ApplicationContext context=new AnnotationConfigApplicationContext(Dbconfiguration.class,ProductDaoImpl.class);
	   ProductDao productDao=(ProductDao)context.getBean("productDaoImpl");
	public void testSaveProduct() {
		
		
	}
	public void testGetProduct() {
		 
		  //product2==null,if it is true, success
		   
		   //check for prices [actual price returned is same as expected price for id=3
		  //if true, success
	}

	public void testUpdateProduct() {
		//Get product object for the id=3
		//Update the price and quantity of the product id=3
		
	}

}




