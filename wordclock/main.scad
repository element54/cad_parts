dist=33;
led_size=6;
thin_wall_t=0.45;
thick_wall_t=thin_wall_t*2;
height=26;
tol=0.4;
gap_width=11;
gap_height=1;

size_x=6;
size_y=5;

for(_x = [0 : size_x-1]) {
    for(_y = [0 : size_y-1]) {
        t(_x*dist+dist/2, _y*dist+dist/2, 0)outer();
        //t(_x*dist+dist/2, _y*dist+dist/2, 0)inner();
    }
}



module inner() {
t(0, 0, height/2)difference() {
    _size=dist-2*thick_wall_t/2-tol;
    cube([_size, _size, height],center=true);
    cube([_size-2*thin_wall_t, _size-2*thin_wall_t, height*1.1],center=true);
    t(0, 0, height/2-(gap_height+1)/2+1) cube([_size*1.1, gap_width, gap_height+1],center=true);
    t(0, 0, height/2-(gap_height+1)/2+1) cube([gap_width, _size*1.1, gap_height+1],center=true);
}
}
module outer() {
t(0, 0, height/2)difference() {
    cube([dist, dist, height],center=true);
    cube([dist-2*thick_wall_t/2, dist-2*thick_wall_t/2, height*1.1],center=true);
    t(0, 0, height/2-(gap_height+1)/2+1) cube([dist*1.1, gap_width, gap_height+1],center=true);
    t(0, 0, height/2-(gap_height+1)/2+1) cube([gap_width, dist*1.1, gap_height+1],center=true);
}
}

module t(x=0,y=0,z=0) {
    translate([x,y,z])children();
}
module r(x=0,y=0,z=0) {
    rotate([x,y,z])children();
}