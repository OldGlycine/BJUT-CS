package Exception;

import javax.sound.sampled.Clip;
import javax.swing.*;
import java.awt.*;
import java.awt.datatransfer.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.IOException;

public class Clipborad extends JFrame {
    private JTextArea textArea;

    private void copy()
    {
        Clipboard clipborad = Toolkit.getDefaultToolkit().getSystemClipboard();
        String text = textArea.getSelectedText();
        if( text == null)
        {
            text = textArea.getText();
        }
        StringSelection selection = new StringSelection((text));
        clipborad.setContents(selection,null);
    }

    private void paste()
    {
        Clipboard clipboard = Toolkit.getDefaultToolkit().getSystemClipboard();
        Transferable contents = clipboard.getContents(this);
        if(contents == null)
            return;
        DataFlavor flavor = DataFlavor.stringFlavor;
        if(contents.isDataFlavorSupported(flavor))
        {
            try
            {
                String text = (String)(contents.getTransferData(flavor));
                textArea.replaceSelection(text);
            }
            catch(UnsupportedFlavorException e)
            {
                JOptionPane.showMessageDialog(this,e);
            }
            catch(IOException ee)
            {
                JOptionPane.showMessageDialog(this,ee);
            }
        }
    }

    public Clipborad()
    {
        setTitle("Clipboard");
        Container contentPane = getContentPane();
        textArea = new JTextArea();
        contentPane.add(new JScrollPane(textArea),BorderLayout.CENTER);
        JPanel panel = new JPanel();
        JButton copyButton = new JButton("Copy");
        panel.add(copyButton);
        copyButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent event) {
                copy();
            }
        });
        JButton pasteButton = new JButton("Paste");
        panel.add(pasteButton);
        pasteButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                paste();
            }
        });
        contentPane.add(panel,BorderLayout.SOUTH);
    }
}
