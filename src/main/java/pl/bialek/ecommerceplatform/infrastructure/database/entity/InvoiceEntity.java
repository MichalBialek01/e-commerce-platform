package pl.bialek.ecommerceplatform.infrastructure.database.entity;

import jakarta.persistence.*;
import lombok.*;
import pl.bialek.ecommerceplatform.infrastructure.database.entity.actors.CustomerEntity;
import pl.bialek.ecommerceplatform.infrastructure.database.entity.actors.SellerEntity;

import java.time.OffsetDateTime;
import java.util.List;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "invoice")
public class InvoiceEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "invoice_id")
    private Long invoiceId;

    @Column(name = "invoice_number")
    private String invoiceNumber;

    @Column(name = "invoice_date")
    private OffsetDateTime dateTime;




}
