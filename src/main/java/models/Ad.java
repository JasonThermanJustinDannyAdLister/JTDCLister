package models;

public class Ad {
    private long id;
    private long userId;
    private String username;
    private String title;
    private String description;

    /**
     * <p>Constructor for the <code>Ad</code> class.</p>
     *
     * @param id a long value representing the unique ID of the ad
     * @param userId a long value representing the userID that posted the ad
     * @param title a string value used as the title of the ad
     * @param description a string value describing the item in the ad
     */
    public Ad(long id, long userId, String title, String description) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.description = description;
    }

    /**
     * <p>Constructor for the <code>Ad</code> class without passing an ID for the ad. This is useful if the
     * generation of ads is not linked to a database.</p>
     *
     * @param userId a long value representing the userID that posted the ad
     * @param title a string value used as the title of the ad
     * @param description a string value describing the item in the ad
     */
    public Ad(long userId, String title, String description) {
        this.userId = userId;
        this.title = title;
        this.description = description;
    }

    /**
     * @return long value for ID of the <code>Ad</code> object
     */
    public long getId() {
        return id;
    }

    /**
     * @param id a long value representing the unique ID of the ad
     */
    public void setId(long id) {
        this.id = id;
    }

    /**
     * @return long value for the userID of the <code>Ad</code> object
     */
    public long getUserId() {
        return userId;
    }

    /**
     * @param userId a long value representing the ID of the user that posted the ad
     */
    public void setUserId(long userId) {
        this.userId = userId;
    }

    /**
     * @return a String value for the title of the <code>Ad</code> object
     */
    public String getTitle() {
        return title;
    }

    /**
     * @param title a String value representing the title of the ad
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * @return a String value for the description of the <code>Ad</code> object
     */
    public String getDescription() {
        return description;
    }

    /**
     * @param description a String value describing the ad
     */
    public void setDescription(String description) {
        this.description = description;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}