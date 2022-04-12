package models;

public class Car {

    private int id;
    private String carName;
    private String carDesc;
    private int user_id;
    private String pathToImg;

    public Car(){};

    public Car (int id, String name, String description, int user_id) {
        this.id = id;
        this.carName = name;
        this.carDesc = description;
        this.user_id = user_id;
        this.pathToImg = pathToImg;
    }

    public Car (String name, String description, int user_id) {
        this.carName = name;
        this.carDesc = description;
        this.user_id = user_id;
        this.pathToImg = pathToImg;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCarName() {
        return carName;
    }

    public void setCarName(String carName) {
        this.carName = carName;
    }

    public String getCarDesc() {
        return carDesc;
    }

    public void setCarDesc(String carDesc) {
        this.carDesc = carDesc;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getPathToImg() {
        return  this.pathToImg;
    }

    public void setPathToImg(String pathToImg) {
        this.pathToImg = pathToImg;
    }
}




