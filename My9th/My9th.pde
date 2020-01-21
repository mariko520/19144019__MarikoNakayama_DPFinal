import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

int xPos, yPos;
boolean inStopMode;

void setup(){
  size(640, 480);
  colorMode(RGB, 255);
  frameRate(10);
  background(0);
  
  ControlWindow controlWindow = new ControlWindow(this);
  xPos =0;
  yPos =0; 
 
  inStopMode = true;
}

void draw(){
  fill(0, 0, 0, 60);
  rect(0, 0, width, height);
  int xPos = (int)random(width);
  int yPos = (int)random(height); 
  
  int r = (int)random(55)+200;
  int g = (int)random(255);
  int b = (int)random(255);
  
  for(int i =0; i<100; i++){
  fill(r, g, b,60);
  noStroke();
  ellipse(xPos, yPos, 30, 30);
  if(!inStopMode){
   xPos += 10;
  }
}
}

void eventsCalledFromControlWindow(String actionCommand){

  if(actionCommand.equals("startButton_Pushed"))
    inStopMode = false;
  else if(actionCommand.equals("stopButton_Pushed"))
    inStopMode = true;
}


class ControlWindow extends JFrame implements ActionListener{

  JButton startButton, stopButton;
  JTextField textField;
  JPanel panel; 

  My8th_kadai_T parentWindow; 

  ControlWindow(My8th_kadai_T parentWindow){

    super("Control Window");

    this.parentWindow = parentWindow;

    this.setSize(320, 240);
 
    panel = new JPanel();
    panel.setLayout(new BorderLayout());

    startButton = new JButton("Start");
    startButton.setActionCommand("startButton_Pushed");
    startButton.addActionListener(this);
    panel.add(startButton, BorderLayout.NORTH);
    stopButton = new JButton("Stop");
    stopButton.setActionCommand("stopButton_Pushed");
    stopButton.addActionListener(this);
    panel.add(stopButton, BorderLayout.SOUTH);
    textField = new JTextField("Control Panel Text Field");
    panel.add(textField, BorderLayout.CENTER);
  
    this.getContentPane().add(panel);

    this.setVisible(true);
  }
  
  @Override
  public void actionPerformed(ActionEvent e){
  
    String actionCommand = e.getActionCommand();

    textField.setText(actionCommand);

    parentWindow.eventsCalledFromControlWindow(actionCommand);
  }
}
