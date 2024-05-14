package kopo.poly.repositroy;

import kopo.poly.repositroy.entity.DiaryEntity;
import kopo.poly.repositroy.entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DiaryRepository extends JpaRepository<DiaryEntity, Long> {

    List<DiaryEntity> findAllByRegIdOrderByRegDtDesc(String regId);
}
