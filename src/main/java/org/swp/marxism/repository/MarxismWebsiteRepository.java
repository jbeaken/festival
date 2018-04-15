package org.swp.marxism.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import org.swp.marxism.domain.MarxismWebsite;

@Repository
public interface MarxismWebsiteRepository extends CrudRepository<MarxismWebsite, Long> {

	MarxismWebsite findByIsLive(boolean isLive);

}
