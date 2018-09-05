package edivelog.service.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import edivelog.service.entity.Activity;

/**
 * <b>Description:</b><br>
 * 
* 
 *  Repository class for the Activity Entity. Provides basic select queries
 *
 * @author amondruffel
 */
public interface ActivityRepository extends CrudRepository<Activity, Integer>
{
    List<Activity> findByID(Long ID);
    List<Activity> findByActivity(String activity);
}
