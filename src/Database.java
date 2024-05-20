import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Database {
    public static Connection getConnection() throws SQLException {
        String dbHost = System.getenv("DB_HOST");
        String dbPort = System.getenv("DB_PORT");
        String dbUser = System.getenv("DB_USER");
        String dbPassword = System.getenv("DB_PASSWORD");
        String dbName = System.getenv("DB_NAME");

        String url = "jdbc:mysql://" + dbHost + ":" + dbPort + "/" + dbName;
        return DriverManager.getConnection(url, dbUser, dbPassword);
    }
}
