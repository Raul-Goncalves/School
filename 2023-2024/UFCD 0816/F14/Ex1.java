import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import java.awt.Color;
import javax.swing.JButton;
import javax.swing.JTextField;
import javax.swing.JTextPane;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

public class Ex1 extends JFrame {

    private JPanel contentPane;
    private static JTextField textField;
    private static JTextPane textPane;

    public static void main(String[] args) {
        EventQueue.invokeLater(new Runnable() {
            public void run() {

                try {


                    Ex1 frame = new Ex1();
                    frame.setVisible(true);
                    textField.requestFocusInWindow();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
    }

    public Ex1() {
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setBounds(100, 100, 450, 270);
        contentPane = new JPanel();
        contentPane.setBackground(Color.PINK);
        contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));

        setContentPane(contentPane);
        contentPane.setLayout(null);

        JPanel panel = new JPanel();
        panel.setBounds(10, 11, 414, 206);
        contentPane.add(panel);
        panel.setLayout(null);

        textField = new JTextField();
        textField.setBounds(10, 164, 185, 26);
        panel.add(textField);
        textField.setColumns(10);
        textField.setText("");
        JTextPane textPane = new JTextPane();
        textPane.setEditable(false);
        textPane.setBounds(10, 11, 394, 141);
        panel.add(textPane);
        //	textPane.setText("");
        JButton btnEnviar = new JButton("ENVIAR");
        btnEnviar.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                textPane.setText(textPane.getText() + textField.getText() + "\n");
                textField.setText("");
                textField.requestFocus();

            }
        });
        btnEnviar.setBounds(205, 166, 89, 23);
        panel.add(btnEnviar);


        JButton btnLimpar = new JButton("LIMPAR");
        btnLimpar.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                textPane.setText("");
            }
        });
        btnLimpar.setBounds(315, 166, 89, 23);
        panel.add(btnLimpar);
    }
}
