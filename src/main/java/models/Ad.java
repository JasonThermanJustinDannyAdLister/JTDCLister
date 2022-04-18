package models;
import java.sql.Date;

public class Ad {
    private long id;
    private long userId;
    private String title;
    private String description;
    private Date date_created;
    private String category;
    private String image;

    public Ad(long id, long userId, String title, String description, String image) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.image = image;
    }

    public Ad(long userId, String title, String description) {
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.date_created = new Date(System.currentTimeMillis());
    }

    public Ad(long userId, String title, String description, Date date_created, String name) {

        this.userId = userId;
        this.title = title;
        this.description = description;
        this.date_created = date_created;
        this.category = name;

    }


    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getUserId() {
        return userId;
    }

    public Date getDate(){return date_created;}

    public void setDate(Date date_created) {
        this.date_created = date_created;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getDate_created() {
        return date_created;
    }

    public void setDate_created(Date date_created) {
        this.date_created = date_created;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}

