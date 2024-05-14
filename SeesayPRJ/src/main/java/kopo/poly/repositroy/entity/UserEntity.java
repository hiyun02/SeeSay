package kopo.poly.repositroy.entity;

import lombok.*;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@DynamicUpdate
@DynamicInsert
@Table(name = "USER_INFO")
@Entity
public class UserEntity {

    @Id
    @Column(name = "USER_ID", length = 30, nullable = false)
    private String userId;

    @NonNull
    @Column(name = "USER_NAME", length = 30, nullable = false)
    private String userName;

    @NonNull
    @Column(name = "PASSWORD", length = 64, nullable = false)
    private String password;

    @NonNull
    @Column(name = "PHONE_NUMBER", length = 60, nullable = false)
    private String phoneNumber;

    @NonNull
    @Column(name = "EMAIL", length = 128, nullable = false)
    private String email;

    @NonNull
    @Column(name = "MEMBER_SINCE", length = 60, nullable = false, updatable = false)
    private String memberSince;

    @NonNull
    @Column(name = "BLINK", length = 10, nullable = false)
    private String blink;
}
