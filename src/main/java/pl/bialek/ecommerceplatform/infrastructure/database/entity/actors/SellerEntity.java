package pl.bialek.ecommerceplatform.infrastructure.database.entity.actors;

import jakarta.persistence.*;
import lombok.*;
import pl.bialek.ecommerceplatform.infrastructure.database.entity.ProductEntity;

import java.util.List;

@Getter
@Setter
@EqualsAndHashCode
@ToString
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "seller")
public class SellerEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "seller_id")
    private Long sellerId;

    private String companyName;
    private String NIP;
}
