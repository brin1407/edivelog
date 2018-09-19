/*
 * Project:		EDiveLog
 * Package:		edivelog.service.repository
 * File: 		ActivityRepository.java
 *
 * Created:		Sep 19, 2018
 * Author:		amondruffel (Sophos Technology GmbH)
 * Copyright:	(C) 2018 Sophos Technology GmbH
 */
package edivelog.service.repository;

import org.springframework.data.repository.CrudRepository;

import edivelog.service.entity.Activity;

public interface ActivityRepository extends CrudRepository<Activity, Integer> {

  //
}