PImage img1;
PImage img2; 

PFont Fuente; 

String estado;  

color col1; 
color col2;
color col3;
color col4;


float posY; 
float posY2; 
float posY3;
float posY4; 

void setup(){
  
  
  
  size ( 800 , 600 );  
  
  img1 = loadImage( "img1.jpeg" ); 
  img2 = loadImage( "img2.jpeg");
  
  Fuente = loadFont( "SegoeScript-Bold-48.vlw");
  
  estado = "titulo" ; 
  
  posY = 650; 
  posY2 = 950;
  posY3 = 1320;
  posY4 = 670;
  
  col1 = color(random(0 , 255), random(0,255) , random(0,255) );
  col2 = color(random(0 , 255), random(0,255) , random(0,255) );
  col3 = color(random(0 , 255), random(0,255) , random(0,255) );
  col4 = color(random(0 , 255), random(0,255) , random(0,255) );
  
  
}

void draw(){
  
  
  // TÍTULO 
  
  if (estado == "titulo" ){ 

  image( img1 , 0 , 0, 800 , 600 );
  textFont(Fuente);
  textAlign(CENTER); 
  textSize(50);
  fill( col1 ) ;
  text( "Hello\n Kitty", 400 , 300) ;
  
  
  if ( mousePressed == true){
    estado =  "Créditos";
  }
  
  }
  
  if (estado == "Créditos"){

    background(255);
    
    
    // PERSONAJES PRINCIPALES. 
    
    
    tint(255);
    image( img1 , 0  , 0 , 800 , 600);
    textAlign(CENTER);
    textSize(40); 
    fill( col2 ) ;
    text("Personajes Principales : \n\n Hello Kitty \n My melody",400 , posY );
    posY = posY-2;
   
   
    //PERSONAJES SECUNDARIOS.
    
    
    textAlign(CENTER);
    textSize(40);
    text("Personajes Secundarios : \n\n Keropi \n  Monkichi",400 , posY2 );
    posY2 = posY2 -2 ; 
   
    
    //MÚSICA
    
    
    textAlign(CENTER); 
    textSize(40); 
    fill( col3 ) ; 
    text(" Musica \n\nHello Kitty: Kitty Linda " , 400 , posY3 );
    posY3 =posY3 - 2 ;  


    if((estado == "Créditos") && (posY3 < -1 )){
    background(0);
    image( img2 , 0 , 0 , 800 , 600 ); 
    textAlign(CENTER); 
    textSize(40); 
    fill( col4 );
    text("DIRECCIÓN \n\n Garigliotti Milagros \n Legajo 88226/4. \n Comisión 1", 400 , posY4);
    posY4 = posY4 - 2;
    }
        
  }
  
  
  

  
}
