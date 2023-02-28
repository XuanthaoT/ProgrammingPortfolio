
// Xuanthao Tran | 13 Sept 2022 | Timeline Project PFont font;
void setup() {
PFont font;
font = createFont("GamjaFlower-Regular.ttf", 40); size(900, 400);
background (#f5e6ce);
textFont(font);
}
void draw() {
background (#f5e6ce);
fill(#716254);
textSize(40);
textAlign(CENTER);
text("Computer History Timeline", width/2, 70); textSize(20);
text("by Xuanthao Tran", width/2, 100);
// Render Timeline stroke(255); strokeWeight(2); line(100, 250, 800, 250); text("1935", 65, 250); text("1960", 845, 250);
// Render Timeline Items
fill(#716254);
line(60, 250,840, 250);
histEvent(160, 200, "Z3", "Created in 1941 by Konrad Zuse - refined version of the Z2 \n becoming the world's first working electromechanical programmable, digital computer.", true);
histEvent(360, 200, "Z4", "Created by Zuse in 1945, \n it was an enhanced verson of the Z3.", true);
histEvent(560, 200, "Manchester Baby", "Built in 1948 by Frederic C. Williams, Tom Kilburn and Geoff Tootill. \n It was designed as a testbed for the Williams tube.", true);
histEvent(760, 200, "EDVAC", "Invented by John Mauchly and J. Presper Eckert in 1951, \n and was designed to be a stored-program computer. ", true);
histEvent(130, 300, "Z2", "Created by Konrad Zuse in 1940- \n it replaced the arithmetic and control logic with electrical relay circuits.", false);
histEvent(330, 300, "Colossus", "In 1943, it was eveloped by a team of British codebreakers \n and was used to break German ciphers during World War II.", false);
histEvent(530, 300, "ENIAC", "The ENIAC was created by John Mauchly and J. Presper Eckert in 1946. \n it was the first electronic programmable digital computer usable for general purpose", false);
histEvent(730, 300, " Ferranti Mark 1", "Built by Ferranti in 1951, \n it was the first commercial computer based on the Manchester Mark 1.", false);
}
void histEvent(int x, int y, String title, String detail, boolean top) { if (top == true) {
fill(#716254);
line(x, y, x, y+50); } else {
line(x, y, x, y-50); };
rectMode(CENTER); fill(255);
rect(x, y, 120, 25, 6); fill(0);
textSize(15);
text(title, x, y+5);
if (mouseX > x-62 && mouseX < x+62 && mouseY > y-17 && mouseY < y+17) {
textSize(20);
fill(#716254);
text(detail, width/2, 350);
}
}
