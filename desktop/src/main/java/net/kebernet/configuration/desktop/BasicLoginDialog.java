public class BasicLoginDialog extends javax.swing.JDialog {
private javax.swing.JPanel contentPane;
private javax.swing.JButton buttonOK;
private javax.swing.JButton buttonCancel;

public BasicLoginDialog(){
setContentPane(contentPane);
setModal(true);
getRootPane().setDefaultButton(buttonOK);

buttonOK.addActionListener(new java.awt.event.ActionListener(){public void actionPerformed(java.awt.event.ActionEvent e){onOK();}});
}

private void onOK(){
 // add your code here
dispose();
}

public static void main(String[] args){
BasicLoginDialog dialog = new BasicLoginDialog();
dialog.pack();
dialog.setVisible(true);
System.exit(0);
}
}
