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
@Table(name = "SENTENCE")
@Entity
public class SentenceEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "SENTENCE_SEQ")
    private Long sentenceSeq;

    @NonNull
    @Column(name="SENTENCE_CONTENT", length = 600, nullable = false)
    private String sentenceContent;

    @NonNull
    @Column(name="REG_ID", length = 30, nullable = false)
    private String regId;

    @NonNull
    @Column(name="REG_DT", length = 30, nullable = false)
    private String regDt;

    @NonNull
    @Column(name="CHG_ID", length = 30, nullable = false)
    private String chgId;

    @NonNull
    @Column(name="CHG_DT", length = 30, nullable = false)
    private String chgDt;
}
