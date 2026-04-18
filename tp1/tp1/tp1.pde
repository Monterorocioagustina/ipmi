 PImage imagen;
int desplazar = 400;

void setup(){
  size(800,400);
  imagen=loadImage("artecubismo.jpeg");
}


void draw(){
 background (230,130,50);
 image(imagen,0,0,400,400);
 
//

strokeWeight(3);
stroke(0,0,0);
fill(237,108,34);
triangle(196+desplazar,166,201+desplazar,236,155+desplazar,220);
//
strokeWeight(3);
stroke(0,0,0);
fill(255,255,227);
quad(146+desplazar,283,201+desplazar,236,205+desplazar,399,103+desplazar,353);
//
strokeWeight(6);
stroke(0,0,0);
fill(31,92,193);
triangle(504,353,496,397,604,399);
//
strokeWeight(3);
stroke(0,0,0);
fill(245,238,30);
quad(155+desplazar,220,146+desplazar,283,200+desplazar,297,201+desplazar,236);
//
strokeWeight(7);
stroke(0,0,0);
line(609,166,677,212);
line(634,152,678,210);
line(648,171,699,201);
line(702,201,707,217);
line(707,217,718,238);
line(718,238,729,279);
line(729,279,755,398);
line(595,167,553,219);
line(553,222,547,283);
line(595,161,608,165);
line(595,165,574,157);
strokeWeight(6);
stroke(0);
line(546,284,503,349);
//
strokeWeight(3);
fill(255);
stroke(0);
beginShape();
vertex(197+desplazar,165);
vertex(205+desplazar,248);
vertex(213+desplazar,272);
vertex(267+desplazar,210);
vertex(204+desplazar,166);
vertex(199+desplazar,166);
endShape();
//
noStroke();
fill(31,92,193);
triangle(610,164,668,201,632,150);
//
fill(0);
beginShape();
vertex(603,242);
vertex(606,397);
vertex(753,396);
vertex(732,295);
vertex(718,239);
vertex(704,209);
vertex(701,200);
vertex(662,182);
vertex(678,209);
vertex(667,210);
vertex(613,269);
vertex(602,247);
endShape();
//
stroke(0);
fill(99,112,240);
triangle(721,264,676,334,739,344);
//
strokeWeight(6);
line(608,397,756,396);
// cabeza
fill(0);
beginShape();
curveVertex(71+desplazar,95);
curveVertex(71+desplazar,95);
curveVertex(102+desplazar,128);
curveVertex(161+desplazar,156);
curveVertex(197+desplazar,163);
curveVertex(214+desplazar,165);
curveVertex(233+desplazar,154);
curveVertex(266+desplazar,130);
curveVertex(296+desplazar,108);
curveVertex(307+desplazar,87);
curveVertex(309+desplazar,61);
curveVertex(307+desplazar,2);
curveVertex(285+desplazar,10);
curveVertex(246+desplazar,25);
curveVertex(197+desplazar,38);
curveVertex(161+desplazar,40);
curveVertex(129+desplazar,33);
curveVertex(97+desplazar,21);
curveVertex(74+desplazar,12);
curveVertex(49+desplazar,1);
curveVertex(54+desplazar,31);
curveVertex(73+desplazar,96);
curveVertex(73+desplazar,96);
endShape();
line(470,95,464,59);
stroke(5);
fill(222,54,38);
quad(637,329,636,363,658,375,672,334);
fill(255);
triangle(673,336,649,399,742,399);
fill(234,123,19);
quad(611,397,620,346,634,329,633,399);
stroke(0);
fill(222,54,38);
triangle(482,62,523,44,463,16);
triangle(643,44,692,54,697,15);
//
fill(255, 220, 0);
beginShape();
curveVertex(497,72);
curveVertex(500,82);
curveVertex(509,91);
curveVertex(527,100);
curveVertex(541,102);
curveVertex(562,100);
curveVertex(562,93);
curveVertex(558,86);
curveVertex(548,78);
curveVertex(530,72);
curveVertex(507,72);
curveVertex(496,72);
endShape();

fill(255, 220, 0);
beginShape();
curveVertex(686,67);
curveVertex(682,75);
curveVertex(676,84);
curveVertex(667,92);
curveVertex(654,96);
curveVertex(643,98);
curveVertex(623,98);
curveVertex(613,96);
curveVertex(615,88);
curveVertex(620,83);
curveVertex(625,77);
curveVertex(631,71);
curveVertex(645,67);
curveVertex(659,66);
curveVertex(672,66);
curveVertex(681,66);
endShape();
//
line(672,65,681,72);
line(506,70,499,80);
line(602,235,605,259);
//
strokeWeight(6);
line(538,75,527,92);
line(637,69,655,86);
//
fill(255);
beginShape();
vertex(565,41);
vertex(568,49);
vertex(571,60);
vertex(571,69);
vertex(572,78);
vertex(572,89);
vertex(572,100);
vertex(572,109);
vertex(573,118);
vertex(573,123);
vertex(580, 121);
vertex(596, 122);
vertex(606, 122);
vertex(598, 111);
vertex(597, 103);
vertex(594, 92);
vertex(589, 82);
vertex(586, 69);
vertex(582, 57);
vertex(578, 43);
vertex(576, 39);
vertex(568, 41);
endShape();
 //
 stroke(255);
line(575,42,598,119);
line(577,118,597,120);
line(570,42,575,73);
// 
stroke(0);
line(567,40,572,77);
//
strokeWeight(3);
stroke(0);
fill(240,39,39);
triangle(577,41,592,86,610,36);
//
fill(21,125,227);
beginShape();
vertex(619, 33);
vertex(619, 40);
vertex(630, 42);
vertex(636, 42);
vertex(644, 36);
vertex(656, 32);
vertex(664, 26);
vertex(680, 21);
vertex(690, 15);
vertex(699, 8);
vertex(703, 7);
vertex(703, 0);
vertex(691, 7);
vertex(674, 17);
vertex(658, 23);
vertex(642, 28);
vertex(629, 31);
vertex(623, 31);
vertex(619, 32);
vertex(619, 40);
endShape();
//
stroke(21,125,227);
line(701,5,636,39);
//
triangle(602,102,674,95,687,110);
quad(669,88,690,108,704,61,693,59);
line(672,94,690,110);
line(607,101,597,101);
//
stroke(0);
line(681,70,668,89);
line(676,76,670,91);
line(691,57,671,91);
line(551,82,559,96);
line(549,77,558,84);
//
stroke(245,32,32);
line(553,83,560,96);
line(556,89,562,96);
//
stroke(255);
fill(255);
beginShape();
curveVertex(509, 126);
curveVertex(529, 123);
curveVertex(544, 118);
curveVertex(558, 111);
curveVertex(573, 103);
curveVertex(577, 103);
curveVertex(596, 103);
curveVertex(609, 106);
curveVertex(625, 108);
curveVertex(644, 111);
curveVertex(660, 111);
curveVertex(678, 112);
curveVertex(681, 114);
curveVertex(669, 125);
curveVertex(660, 134);
curveVertex(647, 142);
curveVertex(635, 148);
curveVertex(616, 160);
curveVertex(598, 160);
curveVertex(571, 157);
curveVertex(550, 150);
curveVertex(534, 144);
curveVertex(520, 136);
curveVertex(510, 130);
endShape();
triangle(511,127,533,124,518,135);
//
stroke(0);
line(675,121,636,152);
line(684,113,650,141);
line(671,125,653,139);
line(596,100,690,112);
line(574,100,574,122);
line(596,99,600,120);

//
fill(232,47,47);
beginShape();
curveVertex(575, 124);
curveVertex(573, 130);
curveVertex(584, 130);
curveVertex(595, 135);
curveVertex(599, 139);
curveVertex(601, 131);
curveVertex(607, 126);
curveVertex(611, 124);
curveVertex(606, 120);
curveVertex(597, 120);
curveVertex(584, 122);
endShape();
//
stroke(232,47,47);
triangle(590,121,573,128,575,121);
//
stroke(0);
line(596,99,606,120);
line(597,120,574,120);
line(574,118,572,130);
line(599,138,602,148);
line(549,152,586,156);
line(586,156,602,148);
line(602,148,617,153);
line(617,153,636,149);
line(558,145,521,188);
line(546,144,478,175);
line(539,131,465,139);
line(636,135,694,155);
line(648,130,753,149);
line(659,123,733,130);
// 
stroke(255);
line(596,107,599,117);

}

//Para sacar las cordenadas
void mousePressed(){

  println(mouseX,mouseY);
}
