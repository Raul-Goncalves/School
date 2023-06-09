import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JTextField;
import javax.swing.JLabel;
import java.awt.Font;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

public class Ex2 extends JFrame {

    private JPanel contentPane;
    private static JTextField textbase;
    private JTextField textAltura;
    private JTextField textResult;

    public static void main(String[] args) {
        EventQueue.invokeLater(new Runnable() {
            public void run() {
                try {
                    Ex2 frame = new Ex2();
                    frame.setVisible(true);
                    textbase.requestFocus();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
    }
    public Ex2() {
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setBounds(100, 100, 243, 225);
        contentPane = new JPanel();
        contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));

        setContentPane(contentPane);
        contentPane.setLayout(null);

        JPanel panel = new JPanel();
        panel.setBounds(9, 27, 200, 110);
        contentPane.add(panel);
        panel.setLayout(null);

        textAltura = new JTextField();
        textAltura.setBounds(91, 42, 86, 20);
        panel.add(textAltura);
        textAltura.setColumns(10);

        textbase = new JTextField();
        textbase.setBounds(91, 11, 86, 20);
        panel.add(textbase);
        textbase.setColumns(10);

        JLabel lblBase = new JLabel("Base:");
        lblBase.setBounds(10, 11, 89, 29);
        panel.add(lblBase);
        lblBase.setFont(new Font("Sitka Text", Font.BOLD, 13));

        JLabel lblAltura = new JLabel("Altura:");
        lblAltura.setBounds(10, 42, 89, 29);
        panel.add(lblAltura);
        lblAltura.setFont(new Font("Sitka Text", Font.BOLD, 13));

        JLabel lblResultado = new JLabel("Resultado:");
        lblResultado.setBounds(10, 73, 89, 29);
        panel.add(lblResultado);
        lblResultado.setFont(new Font("Sitka Text", Font.BOLD, 13));

        textResult = new JTextField();
        textResult.setBounds(91, 75, 86, 20);
        panel.add(textResult);
        textResult.setColumns(10);

        JLabel lblOpes = new JLabel("Opções");
        lblOpes.setFont(new Font("Sitka Text", Font.BOLD, 13));
        lblOpes.setBounds(20, 0, 89, 29);
        contentPane.add(lblOpes);

        JButton btnÁrea = new JButton("ÁREA");
        btnÁrea.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                try {
                    System.out.println("");
                    textResult.setText(String.valueOf(Float.parseFloat(textbase.getText())*Float.parseFloat(textAltura.getText())));
                }
                catch(Exception ex)
                {
                    System.out.println(ex.getMessage());
                }
            }

        });
        btnÁrea.setBounds(20, 148, 78, 23);
        contentPane.add(btnÁrea);

        JButton btnPermetro = new JButton("PERÍMETRO");
        btnPermetro.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                textResult.setText(String.valueOf(2*Float.parseFloat(textbase.getText())+2*Float.parseFloat(textAltura.getText())));
            }
        });
        btnPermetro.setBounds(108, 148, 101, 23);
        contentPane.add(btnPermetro);
    }
}
