package pl.bialek.ecommerceplatform.infrastructure.database.entity.actors;


import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.NaturalId;
import pl.bialek.ecommerceplatform.infrastructure.database.entity.CartEntity;
import pl.bialek.ecommerceplatform.infrastructure.database.entity.OrderEntity;

import java.util.List;

@Getter
@Setter
@EqualsAndHashCode
@ToString
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "customer")
public class CustomerEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "customer_id")
    private Long customerId;


}
