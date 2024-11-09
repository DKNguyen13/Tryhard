package vn.hcmute.models;
import lombok.*;

import java.io.Serializable;
import java.sql.Date;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class AuthorModel implements Serializable {
    private int authorId;
    private String authorName;
    private Date dateOfBirth;
}
