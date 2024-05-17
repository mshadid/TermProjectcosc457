import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.*;

public class Main {
    private static Connection connection;

    public static void main(String[] args) {
        JFrame frame = new JFrame("Applicant Viewer");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(600, 400);

        JTextArea textArea = new JTextArea();
        textArea.setEditable(false);
        frame.add(new JScrollPane(textArea), BorderLayout.CENTER);

        JButton loadButton = new JButton("Load Applicants");
        frame.add(loadButton, BorderLayout.SOUTH);

        loadButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                try {
                    connection = Database.getConnection();
                    String query = "SELECT * FROM Applicants";
                    Statement stmt = connection.createStatement();
                    ResultSet rs = stmt.executeQuery(query);

                    StringBuilder builder = new StringBuilder();
                    while (rs.next()) {
                        builder.append("ID: ").append(rs.getInt("Applicant_id")).append(", ");
                        builder.append("Name: ").append(rs.getString("First_name")).append(" ").append(rs.getString("Last_name")).append("\n");
                    }
                    textArea.setText(builder.toString());
                } catch (SQLException ex) {
                    ex.printStackTrace();
                } finally {
                    try {
                        if (connection != null) connection.close();
                    } catch (SQLException ex) {
                        ex.printStackTrace();
                    }
                }
            }
        });

        frame.setVisible(true);
    }
}
