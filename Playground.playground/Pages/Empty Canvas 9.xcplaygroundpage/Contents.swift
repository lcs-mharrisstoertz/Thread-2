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

canvas.fillColor = Color(hue: 49, saturation: 100, brightness: 100, alpha: 100)

for xPosition in stride(from: 0, to: 400, by: 100) {
    for yPosition in stride(from: 0, to: 400, by: 100) {
 
        
        
        
        var figureVertices: [Point] = []
        // first half
        figureVertices.append(Point(x: xPosition + 48, y: yPosition + 8))
        figureVertices.append(Point(x: xPosition + 8, y: yPosition + 48))
        figureVertices.append(Point(x: xPosition + 4 , y: yPosition + 60))
        figureVertices.append(Point(x: xPosition + 2 , y: yPosition + 68))
        figureVertices.append(Point(x: xPosition + 4 , y: yPosition + 76))
        figureVertices.append(Point(x: xPosition + 8 , y: yPosition + 84))
        figureVertices.append(Point(x: xPosition + 12 , y: yPosition + 92))
        figureVertices.append(Point(x: xPosition + 24 , y: yPosition + 92))
        figureVertices.append(Point(x: xPosition + 32 , y: yPosition + 88))
        figureVertices.append(Point(x: xPosition + 44 , y: yPosition + 78))


        // second half
        figureVertices.append(Point(x: xPosition + 56 , y: yPosition + 88))
        figureVertices.append(Point(x: xPosition + 60 , y: yPosition + 100))
        figureVertices.append(Point(x: xPosition + 72 , y: yPosition + 100))
        figureVertices.append(Point(x: xPosition + 84 , y: yPosition + 92))
        figureVertices.append(Point(x: xPosition + 88 , y: yPosition + 84))
        figureVertices.append(Point(x: xPosition + 90 , y: yPosition + 68))
        figureVertices.append(Point(x: xPosition + 86 , y: yPosition + 56))
        figureVertices.append(Point(x: xPosition + 48, y: yPosition + 8))



        
        // Draw the custom figure
        canvas.drawCustomShape(with: figureVertices)
    }}
// Draw the custom figure
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
