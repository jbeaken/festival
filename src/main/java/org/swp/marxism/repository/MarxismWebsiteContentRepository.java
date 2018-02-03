package org.swp.marxism.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.swp.marxism.domain.Booking;
import org.swp.marxism.domain.MarxismWebsiteContent;

@Repository
public interface MarxismWebsiteContentRepository extends JpaRepository<MarxismWebsiteContent, Long> {

	MarxismWebsiteContent findByIsLive(boolean isLive);

}
