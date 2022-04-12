package dao;


import models.Car;
import models.Category;

import java.util.List;

public interface Categories {

    //function to display all categories related to the cars
    List<Category> all();

    //function to add a category
    Long insert(int id, int carID);

    //function to display cars with respective categories
    List<Category> combined(Car car);

    int deleteCategoriesPerPlanet(int id);
}
