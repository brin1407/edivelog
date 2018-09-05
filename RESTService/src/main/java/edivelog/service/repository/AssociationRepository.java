/*
 * Project:		RESTService
 * Package:		edivelog.service.repository
 * File: 		AssociationRepository.java
 *
 * Created:		Sep 5, 2018
 * Author:		amondruffel (Sophos Technology GmbH)
 * Copyright:	(C) 2018 Sophos Technology GmbH
 */
package edivelog.service.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import edivelog.service.entity.Association;


/**
* <b>Description:</b><br>
* 
* 
*  Repository class for the Accociation Entity. Provides basic select queries
*
* @author amondruffel
*/
public interface AssociationRepository extends CrudRepository<Association, Integer>
{

    List<Association> findByID(Long ID);
    List<Association> findByAssociation(String association);
    
}
