def setup():
    global offset
    offset=random(100)
    size(700,700)
    background(0)
    stroke(255)
    strokeWeight(0.5)
    noFill()
    
def draw():
    global offset
    x,y=[],[]
    m,n=20,70
    if framecount<=600:
        for i in range(4):
            x.append(width*noise(offset+m))
            y.append(width*noise(offset+n))
            m+=10
            n+=10
    bezier(x[0],y[0],x[1],y[1],x[2],y[2],x[3],y[3]);
    offset+=0.005;
    
