package kopo.poly.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ChatDTO {

    private String chatSeq;
    private String chatContent;
    private String chatUser;
    private String sendTime;
}
