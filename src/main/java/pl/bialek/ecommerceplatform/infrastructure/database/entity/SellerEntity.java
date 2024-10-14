package pl.bialek.ecommerceplatform.infrastructure.database.entity;

import jakarta.persistence.*;
import lombok.*;

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

    @OneToOne
    @JoinColumn(name = "address_id")
    private AddressEntity address;


    @OneToMany(mappedBy = "seller")
    private List<ProductEntity> products;

    @OneToMany(mappedBy = "seller")
    private List<InvoiceSellerEntity> invoiceSellers;
}
