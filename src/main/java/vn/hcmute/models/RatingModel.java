package vn.hcmute.models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class RatingModel implements Serializable {
    int userid;
    int bookid;
    byte rating;
    String review_text;
    String fullname;

}
