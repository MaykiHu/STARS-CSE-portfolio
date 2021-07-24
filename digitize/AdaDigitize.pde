//keeps track of switchText number to switch text between "ADA" and "I am"
int switchText;

//stores the image of Ada I am digitizing
//needs "Ada Lovelace.jpg" to be in Processing Sketch Folder
PImage adaOriginal;

//stores the image of the border framing my drawing
//needs "border.png" to be in Processing Sketch Folder
PImage border;

//stores the background image of a matrix I am using
//needs "background.jpg" to be in Processing Sketch Folder
PImage background;

//initializes variables
void setup() {
  size(1392, 1800);
  border = loadImage("border.png");
  background = loadImage("background.jpg");
  adaOriginal = loadImage("Ada Lovelace.jpg");
  switchText = 1;
}

//displays on screen
void draw() {
  
  //sets background to binary code image
  background(background);
  
  //calls to methods to draw Ada and laptop at desired position
  translate(80, 326);
  translate(108, 20);
  drawLaptop();
  translate(-108, -20);
  drawAda();
  translate(-80, -326);
  
  //makes ipad frame fit border
  border.resize(1392, 1800);  
  image(border, 0, 0);
}

//constructs laptop
void drawLaptop() {
  strokeWeight(2);
  
  //draws laptop frame
  rotate(PI/3);
  fill(0);
  
  //screen portion of laptop frame
  rect(800, 20, 300, 400);
  rotate(-PI/3);
  rotate(PI/4.2);
  fill(220);  
  
  //keyboard portion of laptop frame
  rect(920, 300, 220, 400);
  rotate(-PI/4.2);
  stroke(120);
  
  //draws side of laptop
  fill(80);
  beginShape();
  vertex(358, 1289);
  vertex(338, 1291);
  vertex(192, 1156);
  vertex(199, 1139);
  endShape();
  
  //draws screen
  fill(255);
  beginShape();
  vertex(65, 906);
  vertex(178, 1116);
  vertex(445, 846);
  vertex(378, 723);
  endShape();
  
  //draws art piece of Ada in screen
  rotate(-0.55);
  adaOriginal.resize(300, 120);
  image(adaOriginal, -380, 830);
  rotate(0.55);  
  fill(255);
  
  //draws trackpad
  line(405, 1120, 445, 1155);
  line(445, 1155, 495, 1100);
  line(495, 1100, 460, 1066);
  line(405, 1120, 460, 1066);
  line(485, 1090, 430, 1142);
  line(470, 1125, 460, 1115);
  
  //draws keyboard frame
  line(218, 1135, 470, 870);
  line(530, 930, 288, 1193);
  line(218, 1135, 288, 1193);
  line(470, 870, 530, 930);
  
  //draws key art 
  
  //left of space bar keys
  line(232, 1146, 480, 880);
  line(247, 1158, 492, 893);
  line(266, 1173, 510, 912);
  line(237, 1116, 303, 1174);
  line(256, 1096, 322, 1154);
  line(277, 1072, 343, 1132);
  
  //space bar
  line(302, 1048, 346, 1088);
  line(328, 1019, 372, 1059);
  line(354, 992, 396, 1033);
  
  //right of space bar keys
  line(380, 963, 443, 1022);
  line(411, 932, 473, 993);
  line(442, 900, 503, 956);

  //draws "ADA" in laptop
  rotate(-0.6);
  fill(color(int(random(0, 256))), int(random(0, 256)), int(random(0, 256)));
  textSize(48);
  
  //checks if switchText counter is odd; odd displays "I am" and even displays "ADA"
  if(switchText%2!=0) {
  text("I am", -460, 980);
  } else {
  text("ADA", -460, 980);
  }
  rotate(0.6);  
}

//constructs character Ada
void drawAda() {
  
  //draws back hair
  noStroke();
  fill(80, 56, 38);
  ellipse(923, 537, 265, 250);
  fill(80, 50, 48);
  ellipse(895, 452, 215, 110);
  
  //draws left bun
  fill(83, 68, 61);
  triangle(679, 536, 786, 467, 785, 604);
  fill(92, 72, 42);
  ellipse(746, 460, 90, 60);
  fill(88, 68, 60);
  ellipse(725, 500, 120, 95);
  
  //draws face with skin color
  fill(248, 240, 219);
  ellipse(858, 550, 182, 256);
  rotate(0.1);
  ellipse(838, 480, 46, 92);
  rotate(-0.1);
  
  //cheek bone
  rotate(-0.2);
  ellipse(660, 770, 35, 85);
  rotate(0.2);
  
  //draws neck
  fill(248, 240, 219);
  rect(812, 663, 85, 46);
  fill(80, 80, 80, 120);
  
  //contour chin
  arc(860, 632, 138, 92, 0, PI-QUARTER_PI, OPEN);
  
  //draws right bun
  fill(80, 50, 48);
  ellipse(928, 458, 90, 60);
  ellipse(938, 498, 30, 30);
  rotate(PI/3);
  fill(88, 53, 36);
  stroke(113, 86, 42);
  strokeWeight(2);
  ellipse(960, -560, 90, 165);
  rotate(-PI/3);
  noStroke();
  
  //draws clothing
  
  //ab and hip area
  fill(138, 98, 148);
  beginShape();
  vertex(620, 910);
  vertex(895, 910);
  vertex(1045, 1335);
  vertex(635, 1335);
  vertex(650, 1060);
  endShape();
  
  //chest area
  triangle(848, 669, 620, 910, 858, 915);
  fill(111, 119, 198);
  ellipse(900, 1150, 140, 140);
  
  //draws arm from elbow to hands
  fill(226, 233, 226);
  stroke(0);
  beginShape();
  vertex(930, 1205);
  vertex(765, 1300);
  vertex(588, 1128);
  vertex(555, 1108);
  vertex(503, 1110);
  vertex(470, 1080);
  vertex(477, 1076);
  vertex(504, 1090);
  vertex(528, 1095);
  vertex(504, 1070);
  vertex(501, 1059);
  vertex(490, 1050);
  vertex(487, 1032);
  vertex(478, 1028);
  vertex(475, 1018);
  vertex(486, 1011);
  vertex(529, 1012);
  vertex(533, 1005);
  vertex(550, 1002);
  vertex(605, 1076);
  endShape();
  
  //draws wrinkles on glove
  line(525, 1067, 500, 1057);
  line(532, 1068, 558, 1081);
  line(488, 1032, 516, 1042);
  line(533, 1053, 565, 1068);
  line(523, 1027, 571, 1056);
  line(584, 1125, 570, 1111);
  stroke(163, 170, 162);
  fill(172, 164, 143, 188);
  triangle(501, 1013, 528, 1008, 542, 1018);    //shadow at knuckle joint
  
  //draws sleeves on arm
  stroke(0);
  fill(246, 252, 242);
  ellipse(685, 1165, 66, 132);                //biceps
  fill(248, 240, 219);
  ellipse(710, 1178, 60, 122);                //elbow
  fill(248, 240, 219);
  noStroke();
  beginShape();
  vertex(707, 1117);                          //forearm
  vertex(693, 1227);
  vertex(765, 1300);
  vertex(825, 1163);
  endShape();
  fill(145, 150, 211);
  beginShape();
  vertex(848, 1171);                          //wrist
  vertex(766, 1297);
  vertex(740, 1240);
  vertex(798, 1223);
  vertex(802, 1152);
  endShape();
  fill(111, 119, 198, 220);
  triangle(833, 1163, 766, 1298, 938, 1206);   //skin of elbow  
  fill(120, 119, 198);
  ellipse(900, 910, 220, 560);                 //curved area intersecting glove
  
  //draws sleeve 
  
  //sleeve's big trapezoid
  fill(224, 208, 218, 20);
  beginShape();
  vertex(1004, 979);
  vertex(796, 979);
  vertex(833, 1131);
  vertex(964, 1131);
  endShape();
  stroke(224, 208, 218, 20);
  
  //sleeve's small trapezoid
  beginShape();
  vertex(964, 1055);
  vertex(833, 1055);
  vertex(796, 979);
  vertex(1004, 979);
  endShape();
  
  //sleeve's rectangle
  beginShape();
  vertex(833, 1055);
  vertex(964, 1055);
  vertex(964, 1131);
  vertex(833, 1131);
  endShape();
  fill(228, 215, 145);
  
  //sleeve's signal bars (right to left side of screen)
  rect(930, 1015, 10, 80);
  rect(905, 1035, 10, 60);
  rect(880, 1055, 10, 40);
  rect(855, 1075, 10, 20);
  
  //draws hair band
  stroke(202, 132, 42);
  strokeWeight(8);  
  
  //hair band's base button
  ellipse(990, 455, 70, 70);
  stroke(120, 76, 46);
  
  //hair band's line design
  line(968, 428, 1028, 465);
  line(955, 450, 1010, 485);
  line(992, 422, 965, 476);
  line(1020, 438, 985, 492);
  
  //hair band's points to create flower illusion
  strokeWeight(12);
  stroke(238, 202, 8);
  point(982, 432);
  point(1000, 432);
  point(1010, 448);
  point(968, 442);
  point(1008, 469);
  point(968, 464);
  point(980, 472);
  point(998, 472);
  stroke(180, 156, 48);                            //center dot of flower pin
  point(992, 455);
  stroke(225, 200, 20);
  
  //hair band's band
  line(964, 424, 938, 412);
  line(950, 445, 852, 408);
  stroke(252, 248, 222);
  line(938, 412, 906, 402);
  line(846, 408, 818, 418);
  stroke(0);
  noFill();
  
  //draws facial features
  stroke(68, 36, 16);
  
  //draws eye brows (left then right)
  strokeWeight(4);
  arc(796, 530, 52, 36, PI+PI/4, TWO_PI);    //left eye brow
  arc(876, 536, 60, 26, PI+PI/4, TWO_PI);    //right eye brow
  stroke(102, 68, 22);
  
  //draws lash line
  strokeWeight(3);
  arc(798, 538, 38, 16, PI, TWO_PI);        //left lash line
  arc(876, 556, 38, 26, PI, TWO_PI);        //right lash line
  strokeWeight(2);
  
  //draws upper left eyelashes left side of screen to right
  line(787, 532, 783, 527);
  line(793, 529, 791, 525);
  line(782, 532, 780, 529);
  line(801, 529, 803, 524);
  line(797, 530, 797, 524);
  line(781, 533, 774, 536);
  line(807, 530, 808, 526);
  line(814, 533, 815, 530);
  
  //draws upper right eyelashes right side of screen to left
  line(890, 547, 892, 543);
  line(885, 543, 887, 538);
  line(878, 541, 878, 536);
  line(870, 542, 869, 537);
  line(865, 543, 864, 539);
  line(861, 548, 858, 543);
  
  //draws lower left eyelashes from left side of screen to right
  line(786, 546, 781, 547);
  line(788, 549, 785, 550);
  line(793, 551, 790, 551);
  line(801, 551, 795, 553);
  
  //draws lower right eyelashes from left side of screen to right
  line(866, 564, 867, 566);
  line(873, 565, 876, 567);
  line(881, 565, 885, 566);
  
  //draws eyeshadow
  fill(186, 162, 128, 80);
  noStroke();
  ellipse(798, 539, 45, 35);      //left
  ellipse(876, 550, 50, 35);      //right
  
  //draws eyeballs (left then right)
  fill(255);
  ellipse(800, 542, 30, 20);      //left
  ellipse(876, 555, 35, 20);      //right
  
  //draws iris (left then right)
  fill(83, 68, 66);
  ellipse(802, 542, 16, 16);      //left iris
  ellipse(882, 556, 16, 16);      //right iris
  fill(0);
  ellipse(802, 541, 10, 10);      //center small circle in left eye
  ellipse(882, 555, 10, 10);      //center small circle in right eye
  fill(255);
  ellipse(800, 538, 3, 3);        //glittering spot in left eye
  ellipse(880, 552, 3, 3);        //glittering spot in right eye
  stroke(150, 112, 86);
  
  //draws nose
  line(825, 542, 798, 588);                  //nose bridge
  line(798, 588, 803, 600);                  //base of nose
  noStroke();
  fill(88, 30, 8, 160);
  ellipse(808, 600, 10, 4);                  //left nostril
  ellipse(820, 600, 16, 6);                  //right nostril
  fill(186, 166, 136, 160);                  //dimensional shading
  triangle(798, 588, 827, 597, 803, 598);    //triangular shade effect on nose base
  
  //draws mouth
  fill(212, 118, 108);                       
  ellipse(806, 620, 20, 10);                 //lips
  ellipse(822, 625, 35, 15);
  ellipse(820, 630, 30, 15);
  fill(248, 240, 219);
  ellipse(840, 617, 30, 15);                 //bottom pout define
  noFill();
  stroke(242, 169, 156);
  arc(816, 624, 12, 6, 0, PI-0.2);           //smile
  
  //updates drawing canvas with colors, switchText counter, with delay between
  noFill();
  stroke(0);
  switchText++;
  delay(600);
}