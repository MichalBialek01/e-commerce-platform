package pl.bialek.ecommerceplatform.infrastructure.database.entity.actors;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.NaturalId;
@Getter
@Setter
@EqualsAndHashCode
@ToString
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity@Table(name = "user")
//@Inheritance(strategy = InheritanceType.JOINED) - możliwość zastosowania zamiast joinowania
public class UserEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "user_id")
    private Long userId;

    @Column(name = "name")
    private String name;
    @Column(name = "surname")
    private String surname;
    @NaturalId
    @Column(name = "email")
    private String email;
    @Column(name = "phone_number")
    private String phoneNumber;


}
