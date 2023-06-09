import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import java.awt.Color;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JTextField;
import javax.swing.JTextPane;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import javax.swing.JLabel;
import javax.swing.JOptionPane;

import java.awt.SystemColor;
import java.awt.Font;
import java.awt.FlowLayout;

public class Ex4 extends JFrame {

    private JPanel contentPane;
    private static JTextField textR;
    private static JTextPane textPane;
    private JTextField textOp1;
    private JTextField textOp2;

    public static void main(String[] args) {
        EventQueue.invokeLater(new Runnable() {
            public void run() {

                try {


                    Ex4 frame = new Ex4();
                    frame.setVisible(true);
                    textR.requestFocusInWindow();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
    }
    public Ex4() {
        setTitle("CALCULADORA");
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setBounds(100, 100, 401, 114);
        contentPane = new JPanel();
        contentPane.setBackground(Color.blue);
        contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));

        setContentPane(contentPane);
        contentPane.setLayout(new FlowLayout(FlowLayout.CENTER, 5, 5));

        textOp1 = new JTextField();
        contentPane.add(textOp1);
        textOp1.setText("");
        textOp1.setColumns(10);

        textOp2 = new JTextField();
        contentPane.add(textOp2);
        textOp2.setText("");
        textOp2.setColumns(10);

        JLabel lblNewLabel = new JLabel("R:");
        contentPane.add(lblNewLabel);
        lblNewLabel.setFont(new Font("Tahoma", Font.BOLD, 12));
        lblNewLabel.setEnabled(false);
        lblNewLabel.setForeground(SystemColor.windowText);

        textR = new JTextField();
        contentPane.add(textR);
        textR.setColumns(10);
        textR.setText("");


        JButton btndif = new JButton("-");
        contentPane.add(btndif);
        btndif.setFont(new Font("Dialog", Font.BOLD, 15));

        JButton btnsoma = new JButton("+");
        btnsoma.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                try {
                    double n1= Double.parseDouble(textOp1.getText());
                    double n2= Double.parseDouble(textOp2.getText());
                    textR.setText(String.valueOf(n1+n2));
                    JOptionPane.showMessageDialog(null,  "Soma = " + (n1+n2), "RESULTADO", JOptionPane.PLAIN_MESSAGE);
                }
                catch(Exception ex) {
                    JOptionPane.showMessageDialog(null, "ERRO! "+ex,"", JOptionPane.ERROR_MESSAGE);
                }
            }
        });
        contentPane.add(btnsoma);
        btnsoma.setFont(new Font("Dialog", Font.BOLD, 15));

        JButton btnprod = new JButton("x");
        btnprod.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                try {
                    double n1= Double.parseDouble(textOp1.getText());
                    double n2= Double.parseDouble(textOp2.getText());
                    textR.setText(String.valueOf(n1*n2));
                    JOptionPane.showMessageDialog(null,  "Produto = " + (n1*n2), "RESULTADO", JOptionPane.PLAIN_MESSAGE);
                }
                catch(Exception ex) {
                    JOptionPane.showMessageDialog(null, "ERRO! "+ex,"", JOptionPane.ERROR_MESSAGE);
                }
            }
        });
        contentPane.add(btnprod);
        btnprod.setFont(new Font("Dialog", Font.BOLD, 15));

        JButton btndiv = new JButton("/");
        btndiv.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                try {
                    double n1= Double.parseDouble(textOp1.getText());
                    double n2= Double.parseDouble(textOp2.getText());
                    textR.setText(String.valueOf(n1/n2));
                    JOptionPane.showMessageDialog(null,  "Quociente = " + (n1/n2), "RESULTADO", JOptionPane.PLAIN_MESSAGE);
                }
                catch(Exception ex) {
                    JOptionPane.showMessageDialog(null, "ERRO! "+ex,"", JOptionPane.ERROR_MESSAGE);
                }
            }
        });
        contentPane.add(btndiv);
        btndiv.setFont(new Font("Dialog", Font.BOLD, 15));
        //	textPane.setText("");
        JButton btnC = new JButton("C");
        btnC.setFont(new Font("Dialog", Font.BOLD, 15));
        contentPane.add(btnC);
        btnC.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                textR.setText("");
                textOp1.setText("");
                textOp2.setText("");
                textOp1.requestFocus();

            }
        });
        btndif.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                try {
                    double n1= Double.parseDouble(textOp1.getText());
                    double n2= Double.parseDouble(textOp2.getText());
                    textR.setText(String.valueOf(n1-n2));
                    JOptionPane.showMessageDialog(null,  "Diferença = " + (n1-n2), "RESULTADO", JOptionPane.PLAIN_MESSAGE);
                }
                catch(Exception ex) {
                    JOptionPane.showMessageDialog(null, "Ocorreu um erro ", "AVISO", JOptionPane.ERROR_MESSAGE);
                }
            }

        });
    }
}
