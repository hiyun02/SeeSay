package kopo.poly.repositroy.entity;

import lombok.*;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.*;

@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@DynamicUpdate
@DynamicInsert
@Table(name = "FRIEND")
@Entity
public class FriendEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "FRIEND_SEQ")
    private Long friendSeq;

    //친구요청 건 사람 id
    @NonNull
    @Column(name="FOLLOW", length = 30, nullable = false)
    private String follow;

    //친구요청 받은 사람 id
    @NonNull
    @Column(name="FOLLOWEE", length = 30, nullable = false)
    private String followee;
}
