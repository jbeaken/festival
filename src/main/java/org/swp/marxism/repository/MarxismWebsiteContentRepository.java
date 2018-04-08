package org.swp.marxism.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import org.swp.marxism.domain.MarxismWebsiteContent;

@Repository
public interface MarxismWebsiteContentRepository extends CrudRepository<MarxismWebsiteContent, Long> {

	MarxismWebsiteContent findByIsLive(boolean isLive);

}
