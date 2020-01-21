import processing.awt.*;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

void setup(){
  size(640, 480);
  background(0);
  smooth();
  Canvas canvas = (Canvas)surface.getNative();

  JLayeredPane layeredPane = 
    (JLayeredPane)canvas.getParent().getParent();

  JTextField textField = new JTextField("The culture of eating chicken at Christmas] The Japanese started.");
  textField.setBounds(10, 360, 620, 20);
  
  MyButtonListener myButtonListener = 
    new MyButtonListener();
  myButtonListener.setTextField(textField);
  
  JButton button1 = new JButton("true");
  button1.setBounds(200, 390, 100, 20);
  button1.setActionCommand("button1_push");
  button1.addActionListener(myButtonListener);

  JButton button2 = new JButton("false");
  
  button2.setBounds(340, 390, 100, 20);
  button2.setActionCommand("button2_push");
 
  button2.addActionListener(myButtonListener);
  
  layeredPane.add(textField);
  layeredPane.add(button1);
  
  layeredPane.add(button2);
}

void draw(){
  float r = random(255);
  float g = random(255);
  float a = random(255);
  float x = random(width);
  float y = random(height);
  float w = random(20);
  noStroke();
  fill(r,g,255,a);
  ellipse(x,y,w,w);
  
  fill(255);
ellipse(320,260,100,100);
line(180,230,70,100);
line(260,230,230,100); 
ellipse(320,190,60,60); 
arc(220, 206, 30, 25, 20, 20); 

fill(0);
line(195,175,175,75); 
ellipse(312,182,5,5); 
ellipse(328,182,5,5); 

noStroke();
fill(255,100,0); 
ellipse(320,192,7,7); 
}

class MyButtonListener implements ActionListener {
  JTextField textField;
  
  void setTextField(JTextField textField){
    this.textField = textField;
  }
  
  @Override
  public void actionPerformed(ActionEvent e){
    String actionCommand = e.getActionCommand();
    if(actionCommand.equals("button1_push")){
      textField.setText("correct");
    }
    else if(actionCommand.equals("button2_push")){
 
      textField.setText("not correct");
    }
  }
}
