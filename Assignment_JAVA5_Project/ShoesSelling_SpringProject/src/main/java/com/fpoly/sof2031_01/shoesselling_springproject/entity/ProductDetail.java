package com.fpoly.sof2031_01.shoesselling_springproject.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
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
@Table(name = "product_details")
public class ProductDetail {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "productdetails_id")
    private UUID productDetailID;

    @ManyToOne
    @JoinColumn(name = "products_id", referencedColumnName = "products_id")
    private Product product;

    //producer
    @ManyToOne
    @JoinColumn(name = "producer_id", referencedColumnName = "producer_id")
    private Producer producer;
    //terrain_type
    @ManyToOne
    @JoinColumn(name = "terrain_id", referencedColumnName = "terrain_id")
    private TerrainType terrainType;

    //Weather Type
    @ManyToOne
    @JoinColumn(name = "weathertype_id", referencedColumnName = "weather_id")
    private WeatherType weatherType;

    //Sole Type
    @ManyToOne
    @JoinColumn(name = "sole_id", referencedColumnName = "sole_id")
    private Sole sole;

    //Categories Type
    @ManyToOne
    @JoinColumn(name = "categories_id", referencedColumnName = "categories_id")
    private Category category;

    //People Type
    @ManyToOne
    @JoinColumn(name = "peopletype_id", referencedColumnName = "peopletype_id")
    private PeopleType peopleType;

    //Sizes Type
    @ManyToOne
    @JoinColumn(name = "sizes_id", referencedColumnName = "sizes_id")
    private Size size;

    //Colors Type
    @ManyToOne
    @JoinColumn(name = "colors_id", referencedColumnName = "colors_id")
    private Color color;

    //Brands Type
    @ManyToOne
    @JoinColumn(name = "brands_id", referencedColumnName = "brands_id")
    private Brand brand;

    @Column(name = "quantities")
    private int quantity;
    @Column(name = "import_price")
    private Long importPrice;
    @Column(name = "export_price")
    private Long exportPrice;
    @Column(name = "_description")
    private String description;
    @Column(name = "image")
    private String image;
    @Column(name = "productdetails_status")
    private String productdetailsStatus;
}
