//: [Previous](@previous) / [Next](@next)
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 600
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 16 to 30 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics
import CoreGraphics
import AppKit

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
canvas.translate(to: Point(x: canvas.width / 2,
                           y: canvas.height / 2))

// Show a grid
canvas.drawAxes(withScale: true, by: 20, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.
 
 */



//add gradient sky
canvas.fillColor = Color(hue: 180, saturation: 85, brightness: 80, alpha: 100)
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 300, height: 300)
  
//add ground
canvas.fillColor = Color(hue: 100, saturation: 181, brightness: 58, alpha: 100)
    canvas.drawRectangle(at: Point(x:0 , y: -300), width: 300, height: 300)
    
//add rabbit body
canvas.drawShapesWithFill = true
let lightGrey = Color(hue: 210, saturation: 22, brightness: 56, alpha: 100)
canvas.fillColor = lightGrey
canvas.drawEllipse(at: Point(x: 160, y: -80),
                   width: 200,
                   height: 195)
//stomache
let lightPink = Color(hue: 351, saturation: 29, brightness: 100, alpha: 100)
canvas.fillColor = lightPink
canvas.drawEllipse(at: Point(x: 160, y: -95) , width: 65, height: 120)
// legs
let darkGrey = Color(hue: 210, saturation: 22, brightness: 41, alpha: 100)
canvas.fillColor = darkGrey
canvas.drawEllipse(at: Point(x: 100, y: -155), width: 60, height: 55)
canvas.fillColor = darkGrey
canvas.drawEllipse(at: Point(x: 220, y: -155), width: 60, height: 55)
//arms
canvas.drawRoundedRectangle(at: Point(x: 90, y: -120), width: 25, height: 80)
canvas.drawRoundedRectangle(at: Point(x: 210, y: -120), width: 25, height: 80)

//add face
canvas.drawShapesWithBorders = true
canvas.fillColor = lightGrey
canvas.drawEllipse(at: Point(x: 160, y: 40), width: 160, height: 140)
canvas.drawShapesWithBorders = false

// draw ears
canvas.drawEllipse(at: Point(x: 120, y: 130), width: 30, height: 120)
canvas.drawEllipse(at: Point(x: 200, y: 130), width: 30, height: 120)

canvas.fillColor = lightPink
canvas.drawEllipse(at: Point(x: 120, y: 130), width: 15, height: 80)
canvas.drawEllipse(at: Point(x: 200, y: 130), width: 15, height: 80)

// draw eyes
canvas.fillColor = .black
canvas.drawEllipse(at: Point(x: 130, y: 50), width: 20, height: 20)
canvas.fillColor = .white
canvas.drawEllipse(at: Point(x: 127, y: 50), width: 5, height: 5)

canvas.fillColor = .black
canvas.drawEllipse(at: Point(x: 190, y: 50), width: 20, height: 20)
canvas.fillColor = .white
canvas.drawEllipse(at: Point(x: 187, y: 50), width: 5, height: 5)

//draw mouth
canvas.fillColor = lightPink
canvas.drawEllipse(at: Point(x: 160, y: 30), width: 15, height: 10)

canvas.lineColor = .black
canvas.drawLine(from: Point(x: 160, y: 23), to: Point(x: 160, y: 10))
canvas.drawLine(from: Point(x: 145, y: 10), to: Point(x: 175, y: 10))
canvas.drawLine(from: Point(x: 145, y: 10), to: Point(x: 140, y: 15))
canvas.drawLine(from: Point(x: 175, y: 10), to: Point(x: 180, y: 15))

//draw carrot
canvas.fillColor = .orange
canvas.drawEllipse(at: Point(x: 90, y: -220), width: 10, height: 60)
canvas.fillColor = .green
canvas.drawEllipse(at: Point(x: 90, y: -180), width: 5, height: 30)
canvas.drawEllipse(at: Point(x: 86, y: -182), width: 4, height: 20)
canvas.drawEllipse(at: Point(x: 94, y: -176), width: 6, height: 40)



canvas.fillColor = .orange
canvas.drawEllipse(at: Point(x: 220, y: -240), width: 10, height: 60)
canvas.fillColor = .green
canvas.drawEllipse(at: Point(x: 220, y: -200), width: 5, height: 30)
canvas.drawEllipse(at: Point(x: 218, y: -202), width: 4, height: 20)
canvas.drawEllipse(at: Point(x: 224, y: -196), width: 6, height: 40)


canvas.fillColor = .orange
canvas.drawEllipse(at: Point(x: 150, y: -250), width: 10, height: 60)
canvas.fillColor = .green
canvas.drawEllipse(at: Point(x: 150, y: -210), width: 5, height: 30)
canvas.drawEllipse(at: Point(x: 146, y: -208), width: 4, height: 40)
canvas.drawEllipse(at: Point(x: 153, y: -213), width: 6, height: 40)



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

