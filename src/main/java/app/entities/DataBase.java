package app.entities;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DataBase {

    private static final String DB_URL = "jdbc:postgresql://localhost:5432/users_db";
    private static final String DB_USERNAME = "postgres";
    private static final String DB_PASSWORD = "root";

    public static final List<String> usernames = new ArrayList<>();
    public static final List<String> passwords = new ArrayList<>();

    public static void main(String[] args) {

    }

    private static Connection getDBConnection() {
        Connection dbConnection = null;
        try {
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException e) {
            System.out.println(e.getMessage());
        }
        try {
            dbConnection = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
            return dbConnection;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return null;
    }

    public static void addNewUser(String username, String password) {
        Connection connection = getDBConnection();
        try (Statement statement = connection.createStatement()){
            statement.executeUpdate(new StringBuilder().append("insert into users(username, password) values (").append("'").append(username).append("'").append(", ").append("'").append(password).append("'").append(");").toString());

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void getAllData() {
        Connection connection = getDBConnection();
        try {
            Statement statement = connection.createStatement();
            String SQL = "SELECT * FROM users";
            ResultSet resultSet = statement.executeQuery(SQL);

            while (resultSet.next()) {
                usernames.add(resultSet.getString("username"));
                passwords.add(resultSet.getString("password"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void deleteUserData(String username) {
        Connection connection = getDBConnection();
        try {
            Statement statement = connection.createStatement();
            String SQL = "DELETE FROM users WHERE username" + "='" +
                    username + "'";
            statement.execute(SQL);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void deleteAllData() {
        Connection connection = getDBConnection();
        try {
            Statement statement = connection.createStatement();
            String SQL = "DELETE FROM users";
            statement.execute(SQL);

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void updateUserData(String old_username, String old_password, String new_username, String new_password) {
        Connection connection = getDBConnection();
        try {
            Statement statement = connection.createStatement();
            String SQL = "UPDATE users SET (username, password) = ('" + new_username + "', '" + new_password + "') WHERE username='" + old_username + "' AND password='" + old_password + "';";
            statement.execute(SQL);

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
