package com.fpoly.sof2031_01.shoesselling_springproject.repository;

import com.fpoly.sof2031_01.shoesselling_springproject.entity.Sole;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

public interface SoleRepository extends JpaRepository<Sole, UUID> {
}
