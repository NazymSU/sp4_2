package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DBConnection {
    private  static Connection connection;
    static {
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection= DriverManager.getConnection("jdbc:mysql://localhost:8889/sprint_task",
                    "bitlab",
                    "bitlab");
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public  static ArrayList<Items> getItems(){
        ArrayList<Items> items=new ArrayList<>();
      try{
          PreparedStatement statement=connection.prepareStatement("select * from items");

          ResultSet resultSet=statement.executeQuery();

          while (resultSet.next()){
              Items item = new Items();
              item.setId(resultSet.getLong("id"));
              item.setName(resultSet.getString("name"));
              item.setDescription(resultSet.getString("description"));
              item.setPrice(resultSet.getDouble("price"));
              items.add(item);
          }
statement.close();
      }catch (Exception e){
          e.printStackTrace();
      }
      return items;
    }
    public static User getUser(String email){
        User user = null;
        try{
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM users WHERE email = ? LIMIT 1");
            statement.setString(1, email);
            ResultSet resultSet = statement.executeQuery();
            if(resultSet.next()){
                user = new User();
                user.setEmail(resultSet.getString("email"));
                user.setId(resultSet.getLong("id"));
                user.setPassword(resultSet.getString("password"));
                user.setFullName(resultSet.getString("full_name"));
            }
            statement.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return user;
    }
}
