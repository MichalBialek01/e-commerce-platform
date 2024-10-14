package pl.bialek.ecommerceplatform.infrastructure.database.entity;

import jakarta.persistence.*;
import lombok.*;

import java.math.BigDecimal;
import java.util.List;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "product")
public class ProductEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "product_id")
    private Long productId;

    private String name;
    private String description;
    private BigDecimal price;
    private Integer stockQuantity;

    @ManyToOne
    @JoinColumn(name = "seller_id")  // Klucz obcy do Seller
    private SellerEntity seller;

    @OneToMany(mappedBy = "product")
    private List<ImageEntity> images;

    @ManyToOne
    @JoinColumn(name = "category_id")
    private CategoryEntity category;


    @OneToMany(mappedBy = "product")
    private List<CartProductEntity> cartProducts;

    @OneToMany(mappedBy = "product")
    private List<OrderProductEntity> orderProducts;

}
