package kopo.poly.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class DiaryDTO {

    private String diarySeq;
    private String diaryContent;
    private String regId;
    private String regDt;
    private String chgId;
    private String chgDt;

    //fk
    private String userSeq;
}
