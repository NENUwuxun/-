package entity;

import javax.xml.crypto.Data;

public class category {
    private int cat_id;
    private String cat_name;
    private Data cat_time;

    public int getCat_id() {
        return cat_id;
    }
    public Data getCat_time() {
        return cat_time;
    }
    public String getCat_name() {
        return cat_name;
    }
    public void setCat_id(int cat_id) {
        this.cat_id = cat_id;
    }
    public void setCat_name(String cat_name) {
        this.cat_name = cat_name;
    }
    public void setCat_time(Data cat_time) {
        this.cat_time = cat_time;
    }
}
