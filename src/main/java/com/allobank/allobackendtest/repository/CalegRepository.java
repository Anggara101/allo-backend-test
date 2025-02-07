package com.allobank.allobackendtest.repository;

import java.util.List;
import java.util.UUID;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.allobank.allobackendtest.model.Caleg;

@Repository
public interface CalegRepository extends JpaRepository<Caleg, UUID>{
    @Query("SELECT c FROM Caleg c " +
           "JOIN c.dapil d " +
           "JOIN c.partai p " +
           "WHERE (:namaDapil IS NULL OR LOWER(d.namaDapil) LIKE LOWER(CONCAT('%', :namaDapil, '%'))) " +
           "AND (:namaPartai IS NULL OR LOWER(p.namaPartai) LIKE LOWER(CONCAT('%', :namaPartai, '%'))) " +
           "ORDER BY c.nomorUrut ASC")
    List<Caleg> findAllWithFilters(
            @Param("namaDapil") String namadapil,
            @Param("namaPartai") String namaPartai
    );
}
