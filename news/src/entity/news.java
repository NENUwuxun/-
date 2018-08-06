package entity;

import com.mysql.jdbc.Blob;

import javax.xml.crypto.Data;
import java.util.Date;

public class news {
    private int id;
    private String title;
    private String content;
    private Date add_time;
    private Date up_time;
    private int cat_id;
    private String cat_name;
    private String picture;
    private  String author;
    private String partContent;

    public String getPartContent() {
        return partContent;
    }
    public String getAuthor() {
        return author;
    }
    public String getPicture() {
        return picture;
    }
    public int getId() {
        return id;
    }
    public Date getAdd_time() {
        return add_time;
    }
    public Date getUp_time() {
        return up_time;
    }
    public int getCat_id() {
        return cat_id;
    }
    public String getContent() {
        return content;
    }
    public String getTitle() {
        return title;
    }
    public String getCat_name() {
        return cat_name;
    }

    public void setPartContent(String partContent) {
        this.partContent = partContent;
    }
    public void setAuthor(String author) {
        this.author = author;
    }
    public void setId(int id) {
        this.id = id;
    }
    public void setPicture(String picture) {
        this.picture = picture;
    }
    public void setCat_id(int cat_id) {
        this.cat_id = cat_id;
    }
    public void setContent(String content) {
        this.content = content;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public void setUp_time(Date up_time) {
        this.up_time = up_time;
    }
    public void setCat_name(String cat_name) {
        this.cat_name = cat_name;
    }
    public void setAdd_time(Date add_time) {
        this.add_time = add_time;
    }
}
