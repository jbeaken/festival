package org.swp.marxism.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import org.swp.marxism.domain.MarxismWebsite;
import org.swp.marxism.domain.Meeting;

@Repository
public interface MeetingRepository extends CrudRepository<Meeting, Long> {


}
