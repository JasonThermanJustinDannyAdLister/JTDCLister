package dao;

import models.Car;

import java.util.List;

public interface Cars {

    // get a list of all the cars
    List<Car> all();

    // insert a new ad and return the new car's id
    int insert(Car car);

    //find a car by specific id
    Car findCarById(int id);

    //list cars by user
    List<Car> usersCars(int id);

    //update all cars
    int updateCar(Car car);

    //delete a car
    int deleteCar(int id);

    int changeCarOwner(Car car, int userId);

    //search cars
    List<Car> search(String userInput);


}