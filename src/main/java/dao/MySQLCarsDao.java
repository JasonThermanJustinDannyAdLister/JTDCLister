package dao;

import models.Car;
import models.Config;

import java.sql.*;
import com.mysql.cj.jdbc.Driver;
import java.util.ArrayList;
import java.util.List;

public class MySQLCarsDao implements Cars {

    private Connection connection = null;

    public MySQLCarsDao(Config config) {
        try{
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the SQL Database..." + e);
        }
    }

    public List<Car> all() {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM cars");
            ResultSet rs = stmt.executeQuery();
            return createCarsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all cars..." + e);
        }
    }

    public int insert(Car car) {
        try {
            String insertQuery = "INSERT INTO cars (carName, carDesc, user_id) VALUES (?, ?, ?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setInt(3, car.getUser_id());
            stmt.setString(1, car.getCarName());
            stmt.setString(2, car.getCarDesc());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getInt(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new planet.", e);
        }
    }

    private Car extractCar(ResultSet rs) throws SQLException {
        return new Car(
                rs.getInt("id"),
                rs.getString("carName"),
                rs.getString("carDesc"),
                rs.getInt("user_id")
        );
    }

    private List<Car> createCarsFromResults(ResultSet rs) throws SQLException {
        List<Car> cars = new ArrayList<>();
        while (rs.next()) {
            cars.add(extractCar(rs));
        }
        return cars;
    }

    public Car findCarById(int id) {
        String findPlanetQuery = "SELECT * FROM cars WHERE id = ?";
        Car result = null;
        try {
            PreparedStatement stmt = connection.prepareStatement(findPlanetQuery);
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                result = new Car(rs.getInt("id"),
                        rs.getString("carName"),
                        rs.getString("carDesc"),
                        rs.getInt("user_id"));
            }
        } catch (SQLException e) {
            throw new RuntimeException("Error finding Car by that ID..." + e);
        }
        return result;
    };

    public List<Car> usersCars(int id) {
        String usersPlanetQuery = "SELECT carName, carDesc, car.id, car.user_id from users join ads on users.id = car.user_id WHERE users.id = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(usersPlanetQuery);
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            return createCarsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving users planets.", e);
        }
    }

    public int updateCar(Car car){
        String query = "UPDATE cars SET carName = ?, carDesc = ? WHERE id = ?";
        try{
            PreparedStatement stmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            stmt.setString(1, car.getCarName());
            stmt.setString(2, car.getCarDesc());
            stmt.setLong(3, car.getId());
            int count = stmt.executeUpdate();
            return count;
        }catch (SQLException e){
            throw new RuntimeException("Error updating planet");
        }
    }
    public int changeCarOwner(Car car, int userId){
        String query = "UPDATE planets SET user_id = ? WHERE id = ?";
        try{
            PreparedStatement stmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            stmt.setInt(1, userId);
            stmt.setInt(2, car.getId());
            int count = stmt.executeUpdate();
            return count;
        }catch (SQLException e){
            e.printStackTrace();
            throw new RuntimeException("Error updating planet");
        }
    }

    public int deleteCar(int id){
        String query = "DELETE FROM cars WHERE id = ?";
        try{
            PreparedStatement stmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            stmt.setInt(1, id);
            int count = stmt.executeUpdate();
            return count;
        } catch (SQLException e) {
            throw new RuntimeException("Error deleting planet");
        }
    }

    public List<Car> search(String userInput){
        String query = "SELECT * FROM cars WHERE carName LIKE ? OR carDesc LIKE ?";
        String queryWildCard = userInput + "%";

        try{
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, queryWildCard);
            stmt.setString(2, queryWildCard);

            ResultSet rs = stmt.executeQuery();

            return createCarsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error searching for planets");
        }
    }

    public static void main(String args[]){
        Config config = new Config();
        MySQLCarsDao factory = new MySQLCarsDao(config);
        Car test = factory.findCarById(12);
        System.out.println(test);
    }
}
