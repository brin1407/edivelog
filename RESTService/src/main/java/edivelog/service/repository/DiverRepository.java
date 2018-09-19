/*
 * Project:		EDiveLog
 * Package:		edivelog.service.repository
 * File: 		Diver.java
 *
 * Created:		Sep 19, 2018
 * Author:		amondruffel (Sophos Technology GmbH)
 * Copyright:	(C) 2018 Sophos Technology GmbH
 */
package edivelog.service.repository;

import org.springframework.data.repository.CrudRepository;

import edivelog.service.entity.Diver;

public interface DiverRepository extends CrudRepository<Diver, Integer> {

  //
}