

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JTextField;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.awt.event.ActionEvent;

public class NovoContacto extends JFrame {

	private JPanel contentPane;
	private JTextField textNome;
	private JTextField textTelefone;
	private JTextField textTelemovel;
	private JTextField textEmail;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					NovoContacto frame = new NovoContacto();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	private void limpa() {
		
		textNome.setText("");
		textTelemovel.setText("");
		textTelefone.setText("");
		textEmail.setText("");
	}
	public NovoContacto() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 450, 300);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));

		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblNome = new JLabel("NOME:");
		lblNome.setBounds(47, 26, 46, 14);
		contentPane.add(lblNome);
		
		JLabel lblTelefone = new JLabel("TELEFONE");
		lblTelefone.setBounds(47, 57, 79, 14);
		contentPane.add(lblTelefone);
		
		JLabel lblTelemovel = new JLabel("TELEMÓVEL");
		lblTelemovel.setBounds(47, 88, 79, 14);
		contentPane.add(lblTelemovel);
		
		JLabel lblEmail = new JLabel("E-MAIL");
		lblEmail.setBounds(47, 125, 46, 14);
		contentPane.add(lblEmail);
		
		textNome = new JTextField();
		textNome.setBounds(136, 23, 254, 20);
		contentPane.add(textNome);
		textNome.setColumns(10);
		
		textTelefone = new JTextField();
		textTelefone.setColumns(10);
		textTelefone.setBounds(136, 54, 254, 20);
		contentPane.add(textTelefone);
		
		textTelemovel = new JTextField();
		textTelemovel.setColumns(10);
		textTelemovel.setBounds(136, 85, 254, 20);
		contentPane.add(textTelemovel);
		
		textEmail = new JTextField();
		textEmail.setColumns(10);
		textEmail.setBounds(136, 122, 254, 20);
		contentPane.add(textEmail);
		
		JButton guardar = new JButton("GUARDAR");
		guardar.setBounds(75, 196, 121, 23);
		contentPane.add(guardar);
		guardar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				try {
					
					if (textNome.getText().equals("") || textTelefone.getText().equals("") || 
					textTelemovel.getText().equals("") || textEmail.getText().equals(""))
						throw new Exception("Todos os campos são de preenchimento obrigatório!");
					String sql = "Insert INTO contactos values(Null,?,?,?,?)";
					TestaLigacao t = new TestaLigacao();
					Connection con = t.OL();
					PreparedStatement pstmt;
					pstmt = con.prepareStatement(sql);
					pstmt.setString(1, textNome.getText());
					pstmt.setString(2, textTelefone.getText());
					pstmt.setString(3, textTelemovel.getText());
					pstmt.setString(4, textEmail.getText());
					pstmt.executeUpdate();
					t.FecharLigacao(con);
					JOptionPane.showInputDialog(null, "Os dados forma guardados com sucesso" ,"Aviso!");
					
					limpa();
				}
				
				catch(SQLException exe ) {
					
					JOptionPane.showInputDialog(null, exe.getMessage(), "Aviso!");
					
				}
				
				catch(Exception ex ) {
					JOptionPane.showInputDialog(null, ex.getMessage(), "Aviso!");
				}
				
				
			}
		});
		
		
		JButton cancelar = new JButton("CANCELAR");
		cancelar.setBounds(237, 196, 132, 23);
		contentPane.add(cancelar);
	}
}
