package com.Zeal.Shiyulin_Explorer.modules.music.pojo;

import java.util.Date;

public class MusicAlbum {
    private Long id;

    private String name;

    private String author;

    private String genre;

    private String language;

    private Date issutime;

    private String companny;

    private String type;

    private Long pic;

    private String introduction;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public Date getIssutime() {
        return issutime;
    }

    public void setIssutime(Date issutime) {
        this.issutime = issutime;
    }

    public String getCompanny() {
        return companny;
    }

    public void setCompanny(String companny) {
        this.companny = companny;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Long getPic() {
        return pic;
    }

    public void setPic(Long pic) {
        this.pic = pic;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }
}