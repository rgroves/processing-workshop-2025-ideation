size(800, 450);
background(255);
stroke(192);

float padding = 0;
translate(padding, padding);

strokeWeight(.5);
for (int i = 0; i <= width - padding * 2; i += 10) {
  line(i, 0, i, height - padding * 2);
  if (i < height - padding * 2 + 10) {
    line(0, i, width - padding * 2, i);
  }
}


noFill();
strokeWeight(7);
stroke(#ff0000);
point(0, 0);
point((width-padding * 2)/2, (height-padding * 2)/2);
point(width-padding * 2, height-padding * 2);

stroke(#00ff00);
point(10, 10);

strokeWeight(2);
rect(20, 10, 40, 40);

circle(90, 30, 40);

circle(150, 30, 55);
stroke(#0000ff);
arc(150, 30, 55, 55, radians(180), radians(270));
