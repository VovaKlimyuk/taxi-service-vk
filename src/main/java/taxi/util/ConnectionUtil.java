package taxi.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class ConnectionUtil {
    private static final String URL = "jdbc:mysql://"
            + "us-cdbr-east-05.cleardb.net:3306/heroku_f5dcd21cdb0dd28";
    private static final String USERNAME = "bf434eec3eb768";
    private static final String PASSWORD = "f71a1a5b";

    private static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String TIME_ZONE = "?serverTimezone=UTC";

    static {
        try {
            Class.forName(JDBC_DRIVER);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("Can't find SQL Driver", e);
        }
    }

    public static Connection getConnection() {
        Properties dbProperties = new Properties();
        dbProperties.setProperty("user", USERNAME);
        dbProperties.setProperty("password", PASSWORD);
        try {
            return DriverManager.getConnection(URL + TIME_ZONE, dbProperties);
        } catch (SQLException e) {
            throw new RuntimeException("Can't create connection to DB ", e);
        }
    }
}
