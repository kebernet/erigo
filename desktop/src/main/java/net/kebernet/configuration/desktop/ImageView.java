package net.kebernet.configuration.desktop;

import javax.imageio.ImageIO;
import javax.swing.*;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.logging.Logger;

/**
 * Created by rcooper on 7/7/17.
 */
public class ImageView extends JPanel {
    private static final Logger LOGGER = Logger.getLogger(ImageView.class.getCanonicalName());
    private BufferedImage img;

    public ImageView() {
//        try {
//            img = ImageIO.read(new File("Pony.png"));
//        } catch (IOException ex) {
//            ex.printStackTrace();
//        }
    }

    public void setImageUrl(String url){

    }

    @Override
    public Dimension getPreferredSize() {
        return img == null ? new Dimension(200, 200) : new Dimension(img.getWidth(), img.getHeight());
    }

    @Override
    protected void paintComponent(Graphics g) {
        super.paintComponent(g);
        Graphics2D g2d = (Graphics2D) g.create();
        LinearGradientPaint lgp = new LinearGradientPaint(
                new Point(0, 0),
                new Point(0, getHeight()),
                new float[]{0f, 1f},
                new Color[]{Color.GREEN, Color.YELLOW});
        g2d.setPaint(lgp);
        g2d.fillRect(0, 0, getWidth(), getHeight());
        if (img != null) {
            int x = (getWidth() - img.getWidth()) / 2;
            int y = (getHeight() - img.getHeight()) / 2;
            g2d.drawImage(img, x, y, this);
        }
        g2d.dispose();
    }
}