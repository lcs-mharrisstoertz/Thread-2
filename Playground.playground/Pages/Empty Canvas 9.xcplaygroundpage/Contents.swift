//: [Previous](@previous) / [Next](@next)
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 400
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 16 to 30 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics
import OpenGL

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that can draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Create a pen that can draw upon the canvas
let p = Pen(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

/*:
 ## Optional code
 
 Below are two generally helpful configurations.
 
 If you do not wish to work in all four quadrants of the Cartesian plane, comment out the code on line 44.
 
 If you do not wish to see a grid, comment out the code on line 48.
 
 */

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.
 
 */
canvas.drawAxes(withScale: true, by: 50, color: .black)

// BACKGROUND
canvas.fillColor = Color(hue: 320, saturation: 25, brightness: 100, alpha: 100)
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)


for xPosition in stride(from: 40, to: 320, by: 80) {
    for yPosition in stride(from: 100, to: 400, by: 80) {
 
        //FIRST HEART
        
        var figureVertices: [Point] = []
      //first half
        figureVertices.append(Point(x: xPosition + 50, y: yPosition + 20))
        figureVertices.append(Point(x: xPosition + 20, y: yPosition + 60))
        figureVertices.append(Point(x: xPosition + 20, y: yPosition + 70))
        figureVertices.append(Point(x: xPosition + 30, y: yPosition + 80))
        figureVertices.append(Point(x: xPosition + 40, y: yPosition + 80))
        figureVertices.append(Point(x: xPosition + 50, y: yPosition + 70))
        // second half
        figureVertices.append(Point(x: xPosition + 60, y: yPosition + 80))
        figureVertices.append(Point(x: xPosition + 70, y: yPosition + 80))
        figureVertices.append(Point(x: xPosition + 80, y: yPosition + 70))
        figureVertices.append(Point(x: xPosition + 80, y: yPosition + 60))
        figureVertices.append(Point(x: xPosition + 50, y: yPosition + 20))


        canvas.fillColor = Color(hue: 321, saturation: 90, brightness: 100, alpha: 100)
        canvas.drawCustomShape(with: figureVertices)
    
        // SECOND HEART
        figureVertices = []
      //first half
        figureVertices.append(Point(x: xPosition + 50, y: yPosition + 30))
        figureVertices.append(Point(x: xPosition + 30, y: yPosition + 60))
        figureVertices.append(Point(x: xPosition + 35, y: yPosition + 70))
        figureVertices.append(Point(x: xPosition + 45, y: yPosition + 70))
        figureVertices.append(Point(x: xPosition + 50, y: yPosition + 60))
    
        // second half
        figureVertices.append(Point(x: xPosition + 55, y: yPosition + 70))
        figureVertices.append(Point(x: xPosition + 65, y: yPosition + 70))
        figureVertices.append(Point(x: xPosition + 70, y: yPosition + 60))
        figureVertices.append(Point(x: xPosition + 50, y: yPosition + 30))



        
        // Draw the custom figure
        canvas.fillColor = Color(hue: 330, saturation: 55, brightness: 100, alpha: 100)
        canvas.drawCustomShape(with: figureVertices)
        
    }}

// add text

canvas.textColor = .black
canvas.drawText(message: "NIKI MINAJ", at: Point(x: 50, y: 525), size: 50)
canvas.drawText(message: "PINK FRIDAY", at: Point(x: 50, y: 475), size: 50)

canvas.drawText(message: "JUNE 18, 2012", at: Point(x: 50, y: 75), size: 20)
canvas.drawText(message: "AFAS LIVE", at: Point(x: 50, y: 50), size: 20)
canvas.drawText(message: "AMSTERDAM, NORTH HOLLAND", at: Point(x: 50, y: 25), size: 20)

canvas.textColor = Color(hue: 320, saturation: 40, brightness: 100, alpha: 100)
canvas.drawText(message: "NIKI MINAJ", at: Point(x: 45, y: 525), size: 50)
canvas.drawText(message: "PINK FRIDAY", at: Point(x: 45, y: 475), size: 50)

// butterflies
canvas.fillColor = .black
// butterfly 1
canvas.drawEllipse(at: Point(x: 350, y: 85), width: 10, height: 35)
canvas.drawEllipse(at: Point(x: 340, y: 90), width: 15, height: 15)
canvas.drawEllipse(at: Point(x: 340, y: 75), width: 18, height: 18)
canvas.drawEllipse(at: Point(x: 360, y: 90), width: 15, height: 15)
canvas.drawEllipse(at: Point(x: 360, y: 75), width: 18, height: 18)
canvas.drawRoundedRectangle(at: Point(x: 346, y: 95), width: 2, height: 15)
canvas.drawRoundedRectangle(at: Point(x: 350, y: 95), width: 2, height: 15)

//butterfly 2
canvas.drawEllipse(at: Point(x: 50, y: 465), width: 10, height: 35)
canvas.drawEllipse(at: Point(x: 40, y: 470), width: 15, height: 15)
canvas.drawEllipse(at: Point(x: 40, y: 455), width: 18, height: 18)
canvas.drawEllipse(at: Point(x: 60, y: 470), width: 15, height: 15)
canvas.drawEllipse(at: Point(x: 60, y: 455), width: 18, height: 18)
canvas.drawRoundedRectangle(at: Point(x: 46, y: 475), width: 2, height: 15)
canvas.drawRoundedRectangle(at: Point(x: 50, y: 475), width: 2, height: 15)

// butterfly 3
canvas.drawEllipse(at: Point(x: 350, y: 555), width: 10, height: 35)
canvas.drawEllipse(at: Point(x: 340, y: 560), width: 15, height: 15)
canvas.drawEllipse(at: Point(x: 340, y: 545), width: 18, height: 18)
canvas.drawEllipse(at: Point(x: 360, y: 560), width: 15, height: 15)
canvas.drawEllipse(at: Point(x: 360, y: 545), width: 18, height: 18)
canvas.drawRoundedRectangle(at: Point(x: 346, y: 565), width: 2, height: 15)
canvas.drawRoundedRectangle(at: Point(x: 350, y: 565), width: 2, height: 15)
/*:
 ## Show the Live View
 Don't see any results?
 
 Remember to show the Live View (1 then 2):
 
 ![timeline](timeline.png "Timeline")
 
 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
