package com.fpoly.sof2031_01.shoesselling_springproject.repository;

import com.fpoly.sof2031_01.shoesselling_springproject.entity.TerrainType;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

public interface TerrainTypeRepository extends JpaRepository<TerrainType, UUID> {
}
