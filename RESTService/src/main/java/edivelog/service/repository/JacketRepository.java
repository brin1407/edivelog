/*
 * Project:		EDiveLog
 * Package:		edivelog.service.repository
 * File: 		Jacket.java
 *
 * Created:		Sep 19, 2018
 * Author:		amondruffel ()
 * Copyright:	(C) 2018 
 */
package edivelog.service.repository;

import org.springframework.data.repository.CrudRepository;

import edivelog.service.entity.Jacket;

public interface JacketRepository extends CrudRepository<Jacket, Integer> {

  //
}