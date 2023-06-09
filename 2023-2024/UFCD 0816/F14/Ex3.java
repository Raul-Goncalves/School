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
import javax.swing.JScrollPane;
import java.awt.SystemColor;

public class Ex3 extends JFrame {

    private JPanel contentPane;
    private static JTextField textField;
    public static void main(String[] args) {
        EventQueue.invokeLater(new Runnable() {


            public void run() {

                try {


                    Ex3 frame = new Ex3();
                    frame.setVisible(true);
                    textField.requestFocusInWindow();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
    }
    public Ex3() {


        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setBounds(100, 100, 346, 316);
        contentPane = new JPanel();
        contentPane.setBackground(SystemColor.activeCaption);
        contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));

        setContentPane(contentPane);
        contentPane.setLayout(null);

        JPanel panel = new JPanel();
        panel.setBounds(10, 11, 304, 255);
        contentPane.add(panel);
        panel.setLayout(null);
        textField = new JTextField();
        textField.setBounds(205, 35, 72, 31);
        panel.add(textField);
        textField.setColumns(10);
        textField.setText("");

        JButton btnEnviar = new JButton("ENVIAR");
        btnEnviar.setBounds(205, 91, 89, 23);
        panel.add(btnEnviar);

        JScrollPane scrollPane = new JScrollPane();
        scrollPane.setBounds(10, 13, 186, 231);
        panel.add(scrollPane);

        JTextPane textPane = new JTextPane();
        scrollPane.setViewportView(textPane);
        textPane.setEditable(false);
        btnEnviar.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                int t= Integer.parseInt(textField.getText());
                textPane.setText("+--Resultado--+\n");
                for (int i=1;i<11;i++) {
                    textPane.setText(textPane.getText() + "| "+ String.valueOf(i)+"  X  "+ textField.getText()
                            + "  =  " + String.valueOf(t*i) + "  |\n");
                }
                textPane.setText(textPane.getText() +"+-----------------+\n");
                textField.setText("");
                textField.requestFocus();

            }
        });



        JButton btnLimpar = new JButton("LIMPAR");
        btnLimpar.setBounds(205, 140, 89, 23);
        panel.add(btnLimpar);
        btnLimpar.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                textPane.setText("");
            }
        });

    }
}
