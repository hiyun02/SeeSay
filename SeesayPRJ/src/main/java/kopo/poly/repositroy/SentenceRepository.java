package kopo.poly.repositroy;

import kopo.poly.repositroy.entity.SentenceEntity;
import kopo.poly.repositroy.entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public interface SentenceRepository extends JpaRepository<SentenceEntity, Long> {

    List<SentenceEntity> findAllByRegId(String regId);

    @Transactional
    @Modifying(clearAutomatically = true)
    @Query(value = "UPDATE SENTENCE SET sentence_content = :sentence WHERE sentence_seq = :sentenceSeq", nativeQuery = true)
    int updateSentenceContent(@Param("sentence") String sentence, @Param("sentenceSeq") Long sentenceSeq);
}
