package cn.fcr.qa3.pojo;

public class Type {
    private String type;

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }
}