package com.art.consulting.metier;

import org.springframework.stereotype.Service;

@Service
public class genericObjectMetierImpl implements GenericOjectMetier {

	
	
	
	
	@Override
	public <E> E createObj(Class<E> clazz) throws InstantiationException, IllegalAccessException {
		
		return clazz.newInstance();
	}

	

}
