package org.swp.marxism.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.swp.marxism.domain.Booking;
import org.swp.marxism.domain.BookingStatus;

@Repository
public interface BookingRepository extends JpaRepository<Booking, Long> {

	@Modifying
	@Transactional
    @Query("update Booking b set b.status = :status where b.id = :id")
	void updateStatus(@Param("id")Long id, @Param("status") BookingStatus status);
	
	List<Booking> findAllByOrderByIdDesc();
}
