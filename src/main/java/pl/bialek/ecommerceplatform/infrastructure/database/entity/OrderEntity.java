package pl.bialek.ecommerceplatform.infrastructure.database.entity;

import jakarta.persistence.*;
import lombok.*;
import pl.bialek.ecommerceplatform.domain.OrderStatus;
import pl.bialek.ecommerceplatform.infrastructure.database.entity.actors.CustomerEntity;

import java.math.BigDecimal;
import java.time.LocalDate;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "order")
public class OrderEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "order_id")
    private Long orderId;

    private LocalDate orderDate;
    private BigDecimal totalAmount;
    @Enumerated(EnumType.STRING)
    private OrderStatus orderStatus;



}
