package kopo.poly.repositroy;

import kopo.poly.repositroy.entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<UserEntity, String> {

    // 유저 로그인
    UserEntity findByUserIdAndPassword(String userId, String password);

    // 유저 아이디 중복 확인
    UserEntity findByUserId(String userId);

    // 유저 이메일 중복 확인
    Optional<UserEntity> findByEmail(String email);

    // 유저 아이디 찾기
    UserEntity findByUserNameAndEmail(String userName, String email);

    // 인증메일 발송
    Optional<UserEntity> findByUserIdAndEmail(String userId, String email);

    //유저 비밀번호 변경
    @Transactional
    @Modifying(clearAutomatically = true)
    @Query(value = "UPDATE USER_INFO SET PASSWORD = :password WHERE USER_ID = :userId", nativeQuery = true)
    int updateUserPassword(@Param("password") String password, @Param("userId") String userId);

    //히원정보 변경
    @Transactional
    @Modifying(clearAutomatically = true)
    @Query(value = "UPDATE USER_INFO SET USER_NAME = :userName, EMAIL = :email, PHONE_NUMBER = :phoneNumber WHERE user_id = :userId", nativeQuery = true)
    int updateUserInfo(@Param("userName") String userName,@Param("email") String email
            , @Param("phoneNumber") String phoneNumber,  @Param("userId") String userId);

}
