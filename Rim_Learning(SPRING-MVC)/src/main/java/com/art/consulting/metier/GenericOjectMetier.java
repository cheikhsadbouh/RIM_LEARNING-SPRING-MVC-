package com.art.consulting.metier;

public interface GenericOjectMetier {

	public   <E> E createObj(Class<E> clazz)
		throws InstantiationException, IllegalAccessException ;
	
	
	
}
