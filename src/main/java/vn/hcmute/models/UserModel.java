package vn.hcmute.models;

import lombok.*;

import java.io.Serializable;
import java.sql.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserModel implements Serializable {
    private int id;
    private String email;
    private String fullname;
    private int phone;
    private String passwd;
    private Date signupDate;
    private Date lastLogin;
    private boolean isAdmin;
}
