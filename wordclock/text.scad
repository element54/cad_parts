$fn=32;
count_x=11;
count_y=10;
letters = [["E", "S", "K", "I", "S", "T", "A", "F", "Ü", "N", "F"], 
          ["Z", "E", "H", "N", "Z", "W", "A", "N", "Z", "I", "G"],
          ["D", "R", "E", "I", "V", "I", "E", "R", "T", "E", "L"],
          ["V", "O", "R", "F", "U", "N", "K", "N", "A", "C", "H"],
          ["H", "A", "L", "B", "A", "E", "L", "F", "Ü", "N", "F"],
          ["E", "I", "N", "S", "X", "A", "M", "Z", "W", "E", "I"],
          ["D", "R", "E", "I", "P", "M", "J", "V", "I", "E", "R"],
          ["S", "E", "C", "H", "S", "N", "L", "A", "C", "H", "T"],
          ["S", "I", "E", "B", "E", "N", "Z", "W", "Ö", "L", "F"],
          ["Z", "E", "H", "N", "E", "U", "N", "K", "U", "H", "R"]];
size_x = 510;
size_y = 510;
font_size = 20;
dist=33;

difference() {
square([size_x, size_y], center=true);
t(-(count_x*dist)/2, -(count_y*dist)/2, 0)
for(_y = [0 : len(letters)-1]) {
    row = letters[_y];
    for(_x = [0 : len(row)-1]) {
        t(dist/2 + dist*_x, count_y * dist -(dist/2 + dist*_y), 0)
        text(row[_x], halign="center", valign="center",size=font_size, font="DejaVu Sans");
    }
}
}

module t(x=0,y=0,z=0) {
    translate([x,y,z])children();
}
module r(x=0,y=0,z=0) {
    rotate([x,y,z])children();
}