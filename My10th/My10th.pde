import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

String actionCommand;
boolean inStopMode;

YATP5Window yatP5Window;

ControlWindow controlWindow;

void setup(){

  String[] args = {"Child Window"};

  yatP5Window = new YATP5Window();

  PApplet.runSketch(args, yatP5Window);
  
  controlWindow = new ControlWindow(this);
  inStopMode = true;

}

void draw(){
  fill(0,0,0,60);
  rect(0,0,width,height);
  frameRate(5);
  
  for(int i =0;i<50;i++){
    int X=(int)random(100);
    int Y=(int)random(100);
    int W=(int)random(20);
    int R=(int)random(255);
    int G=(int)random(255);
    
  fill(R,G,255,50);
  ellipse(X,Y,W,W);
  }
}

void eventsCalledFromControlWindow(){

  if(actionCommand.equals("startButton_Pushed"))
    inStopMode = false;
  else if(actionCommand.equals("stopButton_Pushed"))
    inStopMode = true;
}

class YATP5Window extends PApplet{
  int xPos =320 ;
  int yPos =0 ;

  YATP5Window(){

    super();
  }
  
  @Override
  public void settings(){
    this.size(640, 480);
  }
  
  @Override
  void setup(){

    this.colorMode(RGB, 255);
    this.background(255, 255, 255);
    this.frameRate(10);
    inStopMode = true;
  }
  
  @Override
  void draw(){
    this.fill(255, 255, 255, 60);
    this.rect(0, 0, this.width, this.height);
    
    fill(100,0,100,150);
    ellipse(320,450,60,25);
    
    for(int i=0;i<3;i++){
    
    this.fill(190, 60, 200, 60);
    this.ellipse(this.xPos, this.yPos, 50, 50);
    if(!inStopMode){
     this.yPos += 5*i;
    }
    
    fill(255);
    rect(0,463,width,15);
    stroke(255);
    }
  }
}

class ControlWindow extends JFrame implements ActionListener{

  JButton startButton, stopButton;
  JTextField textField;
  JPanel panel; 

  My9th_kadai_T parentWindow;
  
  ControlWindow(My9th_kadai_T parentWindow){
 
   super("Control window");
   // Set the Parent Window
   this.parentWindow = parentWindow;
   
   this.setSize(400, 200);
   panel = new JPanel();
   panel.setLayout(new BorderLayout());

   startButton = new JButton("Start");
   startButton.setActionCommand("startButton_Pushed");
   startButton.addActionListener(this);
   panel.add(startButton, BorderLayout.EAST);
   stopButton = new JButton("Stop");
   stopButton.setActionCommand("stopButton_Pushed");
   stopButton.addActionListener(this);
   panel.add(stopButton, BorderLayout.WEST);
   textField = new JTextField("Control Panel Text Field");
   panel.add(textField, BorderLayout.CENTER);


    this.getContentPane().add(panel);
  
   this.setVisible(true);
  }
  
  @Override
  public void actionPerformed(ActionEvent e){

    actionCommand = e.getActionCommand();
    textField.setText(actionCommand);

    parentWindow.eventsCalledFromControlWindow();

  }
}
