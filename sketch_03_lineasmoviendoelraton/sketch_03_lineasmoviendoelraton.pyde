def setup():
    size(400, 400)
    stroke(255)
      
def draw():
    line(150, 25, mouseX, mouseY)
     
def mousePressed():
    saveFrame("output-####.png")
    background(192, 64, 0)
    
