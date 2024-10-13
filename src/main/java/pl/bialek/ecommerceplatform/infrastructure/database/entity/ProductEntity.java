package pl.bialek.ecommerceplatform.infrastructure.database.entity;

import jakarta.persistence.*;
import lombok.*;
import pl.bialek.ecommerceplatform.infrastructure.database.entity.actors.SellerEntity;

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


}
