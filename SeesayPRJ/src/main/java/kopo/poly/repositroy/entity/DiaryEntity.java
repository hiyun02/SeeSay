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
@Table(name = "DIARY")
@Entity
public class DiaryEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "DIARY_SEQ")
    private Long diarySeq;

    @NonNull
    @Column(name="DIARY_CONTNET", length = 5000, nullable = false)
    private String diaryContent;

    @NonNull
    @Column(name="REG_ID", length = 30, nullable = false, updatable = false)
    private String regId;

    @NonNull
    @Column(name="REG_DT", length = 30, nullable = false)
    private String regDt;

    @NonNull
    @Column(name="CHG_ID", length = 30, nullable = false, updatable = false)
    private String chgId;

    @NonNull
    @Column(name="CHG_DT", length = 30, nullable = false)
    private String chgDt;
}
