package dao;

import models.Car;
import models.Category;
import models.Config;

import com.mysql.cj.jdbc.Driver;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLCategoriesDao implements Categories {
    private Connection connection = null;

    public MySQLCategoriesDao(Config config){
        try{
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to SQL database!", e);
        }
    }

    //function to display all categories related to the planets
    public List<Category> all(){
        PreparedStatement stmt = null;
        try{
            stmt = connection.prepareStatement("SELECT * FROM categories");
            ResultSet rs = stmt.executeQuery();
            return createCategoriesFromResults(rs);
        }catch (SQLException e){
            throw new RuntimeException("Error retrieving all categories.", e);
        }
    }

    private List<Category> createCategoriesFromResults(ResultSet rs) throws SQLException{
        List<Category> all = new ArrayList<>();
        while(rs.next()){
            all.add(extractCategory(rs));
        }

        return all;
    }

    private Category extractCategory(ResultSet rs) throws SQLException{
        return new Category(
                rs.getInt("id"),
                rs.getString("name")
        );
    }

    //function to add a category
    public Long insert(int id, int planetId){
        try{
            String query = "INSERT INTO ad_category (planet_id, category_id) VALUES (?, ?)";
            PreparedStatement stmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            stmt.setInt(1, planetId);
            stmt.setInt(2, id);

            long count = stmt.executeUpdate();
            return count;

        }catch (SQLException e){
            throw new RuntimeException("Error inserting category.", e);
        }
    }

    //function to display planets with respective categories
    public List<Category> combined(Car car){
        String query = "SELECT categories.id, categories.name FROM categories JOIN car_category ON categories.id = car_category.category_id JOIN cars ON cars.id = car_category.car_id WHERE cars.id = ?;";
        try{
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setInt(1, car.getId());
            ResultSet rs = stmt.executeQuery();
            return createCategoriesFromResults(rs);
        }catch (SQLException e){
            throw new RuntimeException("Error getting categories.", e);
        }
    }

    public int deleteCategoriesPerPlanet(int id){
        String query = "DELETE FROM car_category WHERE car_id = ?";
        try{
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setInt(1, id);
            int count = stmt.executeUpdate();

            return count;
        }catch (SQLException e){
            throw new RuntimeException("Error deleting all categories per car");
        }
    }
}