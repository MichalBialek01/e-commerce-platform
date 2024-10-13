package pl.bialek.ecommerceplatform.infrastructure.database.entity.actors;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.NaturalId;
import org.hibernate.annotations.UuidGenerator;
import org.hibernate.validator.constraints.UUID;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.ZonedDateTime;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "warehouse_worker")
public class WarehouseWorker {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "warehouse_worker_id")
    private Long warehouseWorkerId;

    private Integer monthlyWorkingTimeHours;
    private LocalDate employmentDate;
    private Integer age;
}


