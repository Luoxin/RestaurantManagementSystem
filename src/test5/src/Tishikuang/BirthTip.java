package Tishikuang;
import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Component;
import java.awt.Dimension;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

import javax.swing.BorderFactory;
import javax.swing.BoxLayout;
import javax.swing.ImageIcon;
import javax.swing.JDialog;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.SwingConstants;
import javax.swing.SwingUtilities;
import javax.swing.Timer;

/**
 * 生日提示框
 * 
 * @author 到达
 * 
 */
public class BirthTip extends JDialog implements ActionListener {

	private static final long serialVersionUID = 1L;
	public static final int WIDTH = 312;// 提示框的宽度
	public static final int HEIGHT = 205;// 提示框的高度
	public static final int INTERVAL = 5;// 移动间隔

	private Timer timer1;// 控制提示款上升
	private Timer timer2;// 控制timer1
	private int x;//
	private int y;
	private Dimension screenSize;
	private boolean up = true;
       public static Color background=new Color(217, 239, 243);
	
	private ImageIcon close0=new ImageIcon("image/tip/close0.jpg");
    private ImageIcon close1=new ImageIcon("image/tip/close1.jpg");
    private ImageIcon bar = new ImageIcon("image/tip/bar.jpg");
    private JLabel closeLabel=new JLabel(close0);
	public BirthTip(String tip) {
		super();
		this.setLayout(new BorderLayout());
		this.setUndecorated(true);

		JPanel northPanel = new JPanel();
		northPanel.setLayout(new BoxLayout(northPanel,BoxLayout.X_AXIS));
		northPanel.setBackground(background);
		northPanel.add(new JLabel(bar));
		closeLabel.addMouseListener(new MouseAdapter(){
			public void mouseClicked(MouseEvent e) {
				JDialog g=(JDialog) SwingUtilities.getWindowAncestor((Component)e.getSource());	
				g.dispose();
			}
			public void mouseEntered(MouseEvent e) {
		            closeLabel.setIcon(close1);		
			}
			public void mouseExited(MouseEvent e) {
				 closeLabel.setIcon(close0);			
			}

		});
		northPanel.add(closeLabel);

		this.add(northPanel, BorderLayout.NORTH);

		JPanel midPanel = new JPanel(new BorderLayout());
		midPanel.setBorder(BorderFactory.createMatteBorder(
                0, 2, 2, 2, Color.BLUE));
        midPanel.setBackground(background);
		ImageIcon tipImage=new ImageIcon("image/tip/birthTip.png");
		JLabel mainLabel = new JLabel(tip,tipImage,SwingConstants.CENTER);
		midPanel.add(mainLabel, BorderLayout.CENTER);
		
		this.add(midPanel, BorderLayout.CENTER);

		Toolkit tk = Toolkit.getDefaultToolkit();
		screenSize = tk.getScreenSize();
		x = screenSize.width - WIDTH;
		y = screenSize.height;
		this.setBounds(x, y, WIDTH, HEIGHT);
		this.setAlwaysOnTop(true);
		
		this.setVisible(true);
		timer1 = new Timer(6, this);//此处设置上升时间 和下降时间
		timer2 = new Timer(1000 * 6, this);//此处设置停顿时间
		timer1.start();//timer控制提示框上升大概需要3s 下降需要三秒
		timer2.start();//timer2控制提示框在中间停顿3秒

	}

	public void actionPerformed(ActionEvent e) {
		if (e.getSource().equals(timer1)) {
			if (up) {		
				y -= INTERVAL;
				if (y < screenSize.height - HEIGHT-28) {
					timer1.stop();
					up=false;
				}
			} else {
				y += INTERVAL;
				if(y>screenSize.height){
					timer1.stop();
					timer2.stop();
					this.dispose();
				}
			}
			
			this.setLocation(x, y);
			this.repaint(x, y, WIDTH, HEIGHT);

		} else if (e.getSource().equals(timer2)) {
			//
             if(!timer1.isRunning()){
            	 timer1.start();
            	 timer2.stop();
             }
		}

	}

	
	public void  show(String message) {
		new BirthTip(message);
	
	}
}
