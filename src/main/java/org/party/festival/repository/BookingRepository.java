package org.party.festival.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.party.festival.domain.Booking;
import org.party.festival.domain.BookingStatus;

@Repository
public interface BookingRepository extends JpaRepository<Booking, Long> {

	@Modifying
	@Transactional
    @Query("update Booking b set b.status = :status where b.id = :id")
	void updateStatus(@Param("id")Long id, @Param("status") BookingStatus status);

	@Modifying
	@Transactional
    @Query("update Booking b set b.isActioned = :isActioned where b.id = :id")
	void updateIsActioned(@Param("id")Long id, @Param("isActioned") Boolean isActioned);	
	
	List<Booking> findAllByOrderByIdDesc();

	@Query("select b from Booking b where b.isActioned = :isActioned")
	List<Booking> findAllByActioned(@Param("isActioned") Boolean isActioned);
}
