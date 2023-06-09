import java.awt.EventQueue;

import javax.swing.ImageIcon;
import javax.swing.JFrame;
import java.awt.Toolkit;
import javax.swing.JMenuBar;
import javax.swing.JMenu;
import javax.swing.JMenuItem;
import javax.swing.event.MenuListener;
import javax.swing.event.MenuEvent;
import java.awt.Color;
import javax.swing.JLabel;

public class AgendaMenu {

	private JFrame frmAgenda;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					AgendaMenu window = new AgendaMenu();
					window.frmAgenda.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the application.
	 */
	public AgendaMenu() {
		initialize();
	}

	/**
	 * Initialize the contents of the frame.
	 */
	private void initialize() {
		frmAgenda = new JFrame();
		frmAgenda.getContentPane().setBackground(new Color(135, 206, 250));
		frmAgenda.setTitle("AGENDA");
		frmAgenda.setIconImage(Toolkit.getDefaultToolkit().getImage(AgendaMenu.class.getResource("/imagens/agenda_icon.png")));
		frmAgenda.setBounds(100, 100, 316, 192);
		frmAgenda.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frmAgenda.getContentPane().setLayout(null);
		
		JLabel imagem = new JLabel("");
		imagem.setBounds(10, 11, 280, 109);
		frmAgenda.getContentPane().add(imagem);
		
		ImageIcon icon = new ImageIcon(AgendaMenu.class.getResource("/imagens/agenda.jpg"));
		imagem.setIcon(icon);
		
		
		JMenuBar menuBar = new JMenuBar();
		frmAgenda.setJMenuBar(menuBar);
		
		JMenu mnNewMenu = new JMenu("CONTACTOS");
		menuBar.add(mnNewMenu);
		
		JMenuItem mntmNewMenuItem = new JMenuItem("NOVO");
		mnNewMenu.add(mntmNewMenuItem);
		
		JMenuItem mntmNewMenuItem_1 = new JMenuItem("LISTAR");
		mnNewMenu.add(mntmNewMenuItem_1);
		
		JMenu mnNewMenu_1 = new JMenu("PROCURAR");
		menuBar.add(mnNewMenu_1);
		
		JMenuItem mntmNewMenuItem_2 = new JMenuItem("POR NOME");
		mnNewMenu_1.add(mntmNewMenuItem_2);
		
		JMenuItem mntmNewMenuItem_3 = new JMenuItem("POR TELE.");
		mnNewMenu_1.add(mntmNewMenuItem_3);
		
		JMenu mnNewMenu_2 = new JMenu("SAIR");
		mnNewMenu_2.addMenuListener(new MenuListener() {
			public void menuCanceled(MenuEvent e) {
			}
			public void menuDeselected(MenuEvent e) {
			}
			public void menuSelected(MenuEvent e) {
				
				System.exit(0);
			}
		});
		menuBar.add(mnNewMenu_2);
	}
}
