/*
 * Project:		EDiveLog
 * Package:		edivelog.service.repository
 * File: 		ProvinceRepository.java
 *
 * Created:		Sep 19, 2018
 * Author:		amondruffel ()
 * Copyright:	(C) 2018 
 */
package edivelog.service.repository;

import org.springframework.data.repository.CrudRepository;

import edivelog.service.entity.Province;

public interface ProvinceRepository extends CrudRepository<Province, Integer> {

  //
}