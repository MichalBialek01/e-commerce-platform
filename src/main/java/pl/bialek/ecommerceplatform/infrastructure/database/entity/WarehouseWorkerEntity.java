package pl.bialek.ecommerceplatform.infrastructure.database.entity;

import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDate;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "warehouse_worker")
public class WarehouseWorkerEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "warehouse_worker_id")
    private Long warehouseWorkerId;

    private Integer monthlyWorkingTimeHours;
    private LocalDate employmentDate;
    private Integer age;

    @OneToOne(mappedBy = "worker")
    private InvoiceEntity invoice;

    @OneToOne
    @JoinColumn(name = "user_id")
    private UserEntity user;



}


