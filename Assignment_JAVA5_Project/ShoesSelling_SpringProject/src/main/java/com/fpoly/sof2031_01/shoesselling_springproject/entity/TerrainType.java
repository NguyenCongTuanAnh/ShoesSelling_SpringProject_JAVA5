package com.fpoly.sof2031_01.shoesselling_springproject.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import java.util.UUID;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Builder

@Entity
@Table(name = "terrain_type")
public class TerrainType {
    @Id
    @GeneratedValue(generator = "UUID")
    @Column(name = "terrain_id")
    private UUID terrainID;

    @Column(name = "terrain_name")
    private String terrainName;
}
