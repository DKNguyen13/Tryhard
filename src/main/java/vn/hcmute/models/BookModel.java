package vn.hcmute.models;

import lombok.*;

import java.io.Serializable;
import java.sql.Date;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class BookModel implements Serializable {
    private int bookId;
    private int isbn;
    private String title;
    private String publisher;
    private double price;
    private String description;
    private Date publishDate;
    private String coverImage;
    private int quantity;
    private String author;

}
