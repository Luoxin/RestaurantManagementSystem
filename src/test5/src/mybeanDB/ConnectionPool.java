package mybeanDB;
import java.util.*;
import java.sql.*;
public class ConnectionPool {
    private Vector<Connection> pool;
    private int poolSize = 10;
    private static ConnectionPool instance = null;
    public static ConnectionPool getInstance() {
        if (instance == null) {
            instance = new ConnectionPool();
        }
        return instance;
    }
    private ConnectionPool() {
        pool = new Vector<Connection>(poolSize);
        Connection conn = null;
        for (int i = 0; i < poolSize; i++) {
            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/cateringmanagement","root", "12345678");
                pool.add(conn);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
    public Connection getConnection() { 
        if (pool.size() > 0) {
            Connection conn = pool.get(0);
            pool.remove(conn);
            return conn;
        } else {
            return null;
        }
    }
    public void release(Connection conn) {
        pool.add(conn);
    }
}