package kopo.poly.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class UserDTO {

    private String userId;
    private String userName;
    private String password;
    private String phoneNumber;
    private String email;
    private String memberSince;

    private String userAuth;

}
