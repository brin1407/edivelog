package edivelog.service.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import edivelog.service.entity.Accessories;

public interface AccessoriesRepository extends CrudRepository<Accessories, Integer>
{

    List<Accessories> findByID(Long ID);
    
}
