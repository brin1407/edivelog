package edivelog.service.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import edivelog.service.entity.Accessories;


/**
 * <b>Description:</b><br>
 * 
 *  Repository class for the accessories Entity. Provides basic select queries
 *
 * @author amondruffel
 */
public interface AccessoriesRepository extends CrudRepository<Accessories, Integer>
{

    List<Accessories> findByID(Long ID);
    
}
