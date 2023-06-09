import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JTextField;
import javax.swing.JLabel;
import javax.swing.JOptionPane;

import java.awt.Font;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import javax.swing.JRadioButton;
import java.awt.SystemColor;
import java.awt.Color;
import javax.swing.ButtonGroup;

public class Ex6 extends JFrame {

	private JPanel contentPane;
	private static JTextField textValor;
	private final ButtonGroup buttonGroup = new ButtonGroup();

	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					Ex6 frame = new Ex6();
					frame.setVisible(true);
					textValor.requestFocus();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	public Ex6() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 345, 209);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));

		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JPanel panel = new JPanel();
		panel.setBackground(SystemColor.controlShadow);
		panel.setBounds(10, 65, 310, 90);
		contentPane.add(panel);
		panel.setLayout(null);
		
		textValor = new JTextField();
		textValor.setBounds(157, 13, 136, 20);
		panel.add(textValor);
		textValor.setColumns(10);
		
		JLabel lblBase = new JLabel("Valor a converter: ");
		lblBase.setForeground(SystemColor.text);
		lblBase.setBounds(20, 11, 152, 29);
		panel.add(lblBase);
		lblBase.setFont(new Font("Sitka Text", Font.BOLD, 13));
		
		JButton btnConverter = new JButton("CONVERTER");
		btnConverter.setForeground(new Color(0, 0, 255));
		btnConverter.setBounds(20, 44, 116, 23);
		panel.add(btnConverter);
		
		
		JLabel lblOpes = new JLabel("tipo de conversão: ");
		lblOpes.setFont(new Font("Sitka Text", Font.BOLD, 13));
		lblOpes.setBounds(10, 25, 130, 29);
		contentPane.add(lblOpes);
		
		JRadioButton rbCF = new JRadioButton("ºC ->ºF");
		buttonGroup.add(rbCF);
		rbCF.setFont(new Font("Tahoma", Font.BOLD, 14));
		rbCF.setBounds(130, 24, 109, 23);
		contentPane.add(rbCF);
		
		JRadioButton rbFC = new JRadioButton("ºF->ºC");
		buttonGroup.add(rbFC);
		rbFC.setFont(new Font("Tahoma", Font.BOLD, 14));
		rbFC.setBounds(240, 21, 140, 29);
		contentPane.add(rbFC);
		
		JButton btnC = new JButton("C");
		btnC.setBounds(157, 44, 136, 23);
		panel.add(btnC);
		btnC.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				textValor.setText("");
			}
		});
		btnConverter.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				try {
					if (rbCF.isSelected()) {
						double temp = Double.parseDouble(textValor.getText())*9/5 + 32;
						textValor.setText(String.valueOf(temp));
					}
					
					if (rbFC.isSelected()) {
						double temp = (Double.parseDouble(textValor.getText())-32)*5/9;
						textValor.setText(String.valueOf(temp));
					}	
					if (!(rbCF.isSelected()) && !(rbFC.isSelected())) {
						throw new Exception ("Escolha uma opção de conversão!");
					}
	
				}
				catch(Exception ex)
				{
					JOptionPane.showMessageDialog(null, ex.getMessage(), "AVISO", JOptionPane.WARNING_MESSAGE);
				}
				}
				
		});
		
		
	}
}
