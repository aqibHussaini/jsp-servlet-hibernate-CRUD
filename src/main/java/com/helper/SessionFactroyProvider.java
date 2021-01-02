package com.helper;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class SessionFactroyProvider {
	static SessionFactory factory=null;
public static SessionFactory getSessionFactory()
{
	if(factory==null)
	{
		Configuration configuration=new Configuration();
		factory=configuration.configure("hibernate-cfg.xml").buildSessionFactory(); 
	}
		return factory;
	
}
}
