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
// Move the origin from the bottom-left corner of the canvas to it's centre point
//canvas.translate(to: Point(x: canvas.width / 2,
//                           y: canvas.height / 2))

// Show a grid
canvas.drawAxes(withScale: true, by: 50, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.
 
 */
//add background
canvas.fillColor = Color(hue: 193, saturation: 99, brightness: 86, alpha: 100)
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

// draw white circles


canvas.fillColor = .white
canvas.drawEllipse(at: Point(x: 200, y: 400), width: 10, height: 10)

canvas.borderColor = .white

canvas.drawShapesWithFill = false
canvas.drawShapesWithBorders = true



for size in stride(from: 40, through: 400 , by: 50) {
    
    canvas.drawEllipse(at: Point(x: 200, y: 400), width: size, height: size , borderWidth: 12)
}


//draw pink circles
canvas.drawShapesWithFill = true

canvas.fillColor = Color(hue: 312, saturation: 63, brightness: 66, alpha: 100)

canvas.drawEllipse(at: Point(x: 200, y: 500), width: 10, height: 10)


canvas.borderColor = Color(hue: 312, saturation: 63, brightness: 66, alpha: 100)

canvas.drawShapesWithFill = false
canvas.drawShapesWithBorders = true



for size in stride(from: 40, through: 400 , by: 50) {
    
    canvas.drawEllipse(at: Point(x: 200, y: 500), width: size, height: size , borderWidth: 12)
}

// add text

canvas.drawText(message: "superdrag", at: Point(x: 25, y: 80), size: 40)

canvas.drawText(message: "with", at: Point(x: 25, y:45), size: 8)
canvas.drawText(message: "the shambles", at: Point(x: 25, y: 30), size: 8)
canvas.drawText(message: "and lifter", at: Point(x: 25, y: 15), size: 8)

canvas.drawText(message: "thursday", at: Point(x: 115, y:45), size: 8)
canvas.drawText(message: "june 13 1996 / 8:30", at: Point(x: 115, y: 30), size: 8)
canvas.drawText(message: "no age limit", at: Point(x: 115, y: 15), size: 8)

canvas.drawText(message: "at brick by brick", at: Point(x: 300, y:45), size: 8)
canvas.drawText(message: "1130 buenos avenue", at: Point(x: 300, y: 30), size: 8)
canvas.drawText(message: "san diego, ca", at: Point(x: 300, y: 15), size: 8)
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

