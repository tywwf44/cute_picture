//
//  ContentView.swift
//  cute_picture
//
//  Created by   lawliet on 2020/11/19.
//

import SwiftUI
struct DrawView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
      
        
        let imageview = UIImageView(image: UIImage(named: "Keroro"))

        imageview.frame = CGRect(x: 65, y: 30, width: 260, height: 400
        )

        

       // view.addSubview(imageview)
        
        
        
        
         view.layer.addSublayer(HatLayer())
         view.layer.addSublayer(faceLayer())
        view.layer.addSublayer(leftEyeLayer())
       view.layer.addSublayer(rightEyeLayer())
         view.layer.addSublayer(BlackLeftEyeLayer())
       view.layer.addSublayer(BlackRightEyeLayer())
       view.layer.addSublayer(mouthLayer())
        view.layer.addSublayer(bodyLayer())
        view.layer.addSublayer(whiteBodyLayer())
        view.layer.addSublayer(bodyStarLayer())
        view.layer.addSublayer(mouth3Layer())
        view.layer.addSublayer(mouth2Layer())
        view.layer.addSublayer(littleStarLayer())
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
       
    }
    
}
struct ContentView: View {
    var body: some View {
        DrawView()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

func faceLayer()-> CAShapeLayer
{
    let view = UIView()
    
    let aDegree = CGFloat.pi / 180
    
    let path = UIBezierPath(arcCenter: CGPoint(x: 199, y:147 ), radius: 90, startAngle: aDegree*355, endAngle: aDegree*190, clockwise: true)
    
    
    path.addQuadCurve(to: CGPoint(x: 137, y: 70), controlPoint: CGPoint(x: 120, y: 90))
    
    path.addQuadCurve(to: CGPoint(x: 272, y: 83), controlPoint: CGPoint(x: 230, y: 60))
    
    path.addQuadCurve(to: CGPoint(x: 289, y: 141), controlPoint: CGPoint(x: 290, y: 120))
    

    let Layer = CAShapeLayer()
    
    Layer.path = path.cgPath
    
    Layer.fillColor = UIColor(red: 96/255, green: 179/255, blue: 95/255, alpha: 1).cgColor
    
    view.layer.mask = Layer
    
    Layer.lineWidth = 1
    Layer.strokeColor = UIColor.black.cgColor

    return Layer
}

func leftEyeLayer()->CAShapeLayer
{
    let view = UIView()
    
    
    let path = UIBezierPath(ovalIn: CGRect(x: 121, y: 71, width: 69, height: 75.5))
    
    let Layer = CAShapeLayer()
    
    Layer.path = path.cgPath
    
    Layer.fillColor = UIColor(red: 230/255, green: 237/255, blue: 230/255, alpha: 1).cgColor
    
    view.layer.mask = Layer
    
    
    Layer.strokeColor = .init(red: 0, green: 0, blue: 0, alpha: 1)
    
    
    Layer.lineWidth = 1
    
    return Layer
}

func rightEyeLayer()->CAShapeLayer
{
    let view = UIView()
    
    
    let path = UIBezierPath(ovalIn: CGRect(x: 213, y: 77, width: 68, height: 76))
    
    let Layer = CAShapeLayer()
    
    Layer.path = path.cgPath
    
    Layer.fillColor = UIColor(red: 230/255, green: 237/255, blue: 230/255, alpha: 1).cgColor
    
    view.layer.mask = Layer
    
    Layer.strokeColor = .init(red: 0, green: 0, blue: 0, alpha: 1)

    
    Layer.lineWidth = 1
    
    return Layer
}

func BlackRightEyeLayer()->CAShapeLayer
{
    let view = UIView()
    
    
    let path = UIBezierPath(ovalIn: CGRect(x: 235, y: 96, width: 30, height: 34))
    
    let Layer = CAShapeLayer()
    
    Layer.path = path.cgPath
    
    Layer.fillColor = UIColor(red: 29/255, green: 29/255, blue: 29/255, alpha: 1).cgColor
    
    view.layer.mask = Layer
    
    Layer.strokeColor = .init(red: 0, green: 0, blue: 0, alpha: 1)
 
 
    
    Layer.lineWidth = 1
    
    return Layer
}

func BlackLeftEyeLayer()->CAShapeLayer
{
    let view = UIView()
    
    
    let path = UIBezierPath(ovalIn: CGRect(x: 137, y: 90, width: 30, height: 33))
    
    let Layer = CAShapeLayer()
    
    Layer.path = path.cgPath
    
    Layer.fillColor = UIColor(red: 29/255, green: 29/255, blue: 29/255, alpha: 1).cgColor
    
    view.layer.mask = Layer
    
    Layer.strokeColor = .init(red: 0, green: 0, blue: 0, alpha: 1)
   
    
    Layer.lineWidth = 1
    
    return Layer
}


func mouthLayer()->CAShapeLayer
{
    let view = UIView()
    
    let aDegree = CGFloat.pi / 180
    
//    let path = UIBezierPath()
//    path.move(to: CGPoint(x: 140, y: 230))
//
//
//    path.addCurve(to: CGPoint(x: 250, y: 237), controlPoint1: CGPoint(x: 220, y: 210), controlPoint2: CGPoint(x: 180, y: 205))
    
    let path = UIBezierPath(arcCenter: CGPoint(x: 200, y:136.5), radius: 99.5, startAngle: aDegree*63, endAngle: aDegree*124, clockwise: true)
    

    path.addCurve(to: CGPoint(x: 190, y: 211), controlPoint1: CGPoint(x: 175, y: 218), controlPoint2: CGPoint(x: 180, y: 212))
    
    
    path.addCurve(to: CGPoint(x: 243, y: 226), controlPoint1: CGPoint(x: 219, y: 214), controlPoint2: CGPoint(x: 230, y: 227))
    
    
    
    let Layer = CAShapeLayer()
    
    Layer.path = path.cgPath
    
    Layer.fillColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1).cgColor
    
    view.layer.mask = Layer
    
    Layer.strokeColor = .init(red: 0, green: 0, blue: 0, alpha: 1)
    
    Layer.lineWidth = 1
    
    
    return Layer
}


func HatLayer()->CAShapeLayer
{
    let view = UIView()
    
    
    //帽頂
    let path = UIBezierPath()
    

    path.move(to: CGPoint(x: 137, y: 213))
    
  
    
   path.addCurve(to: CGPoint(x: 120, y: 223), controlPoint1: CGPoint(x: 128, y: 231), controlPoint2: CGPoint(x: 120, y: 220))
    
    
    path.addCurve(to: CGPoint(x: 87, y: 144), controlPoint1: CGPoint(x: 80, y: 212), controlPoint2: CGPoint(x: 61, y: 184))
    
    path.addCurve(to: CGPoint(x: 137, y: 67), controlPoint1: CGPoint(x: 135, y: 60), controlPoint2: CGPoint(x: 139, y: 68))
    
    path.addCurve(to: CGPoint(x: 274, y: 84), controlPoint1: CGPoint(x: 210, y: 10), controlPoint2: CGPoint(x: 237, y: 44))
    
    
    path.addCurve(to: CGPoint(x: 277, y: 230), controlPoint1: CGPoint(x: 335, y: 200), controlPoint2: CGPoint(x: 330, y: 210))
    
    path.addCurve(to: CGPoint(x: 253, y: 221), controlPoint1: CGPoint(x: 265, y: 235), controlPoint2: CGPoint(x: 255, y: 225))
    
    path.close()
    
    let Layer = CAShapeLayer()
    
    Layer.path = path.cgPath
    
    
    Layer.fillColor = UIColor(red: 224/255, green: 204/255, blue: 134/255, alpha: 1).cgColor
    
    view.layer.mask = Layer
    

    
    Layer.strokeColor = .init(red: 0, green: 0, blue: 0, alpha: 1)
    Layer.lineWidth = 1
    
    

    return Layer
    
}


func bodyLayer()->CAShapeLayer
{
    let view = UIView()
    
    let Layer = CAShapeLayer()
    
    let path = UIBezierPath()
    
    path.move(to: CGPoint(x: 173, y: 233))
    
   path.addLine(to: CGPoint(x: 130, y: 267))
    
    path.addCurve(to: CGPoint(x: 88, y: 264), controlPoint1: CGPoint(x: 110, y: 268), controlPoint2: CGPoint(x: 95, y: 261))
    
    path.addQuadCurve(to: CGPoint(x: 88, y: 270), controlPoint: CGPoint(x: 90, y: 266))
    
    path.addLine(to: CGPoint(x: 83, y: 275))
    
    path.addQuadCurve(to: CGPoint(x: 84, y: 279), controlPoint: CGPoint(x: 81, y: 278))
    
    path.addLine(to: CGPoint(x: 87.8, y: 278))
    
    path.addQuadCurve(to: CGPoint(x: 85, y: 283), controlPoint: CGPoint(x: 89, y: 280))
    
    
    path.addQuadCurve(to: CGPoint(x: 90, y: 283), controlPoint: CGPoint(x: 84, y: 284))
    
    path.addLine(to: CGPoint(x: 90, y: 288))
    
    path.addQuadCurve(to: CGPoint(x: 94, y: 291), controlPoint: CGPoint(x:93, y: 285))
    
    path.addLine(to: CGPoint(x: 99, y: 285))
    
    
    
    
    path.addCurve(to: CGPoint(x: 135.5, y: 285), controlPoint1: CGPoint(x: 129, y: 286), controlPoint2: CGPoint(x: 130, y: 287))
    
    path.addQuadCurve(to: CGPoint(x: 171, y: 240), controlPoint: CGPoint(x: 164, y: 260))
    
    path.addCurve(to: CGPoint(x: 164, y: 330), controlPoint1: CGPoint(x: 139, y: 321), controlPoint2: CGPoint(x: 169, y: 321))
    
    path.addCurve(to: CGPoint(x: 180, y: 415), controlPoint1: CGPoint(x: 182, y: 415), controlPoint2: CGPoint(x: 180, y: 415))
    
    path.addLine(to: CGPoint(x: 175, y: 420))
    
    path.addLine(to: CGPoint(x: 175, y: 422))
    
    path.addCurve(to: CGPoint(x: 190, y: 335), controlPoint1: CGPoint(x: 204, y: 420), controlPoint2: CGPoint(x: 183.6, y: 409))
    
    path.move(to: CGPoint(x: 175, y: 329))
    
    path.addCurve(to: CGPoint(x: 204, y: 334), controlPoint1: CGPoint(x:185, y: 332), controlPoint2: CGPoint(x: 190, y: 338))
    
    
    
    path.addCurve(to: CGPoint(x: 217, y: 420), controlPoint1: CGPoint(x:217, y: 420), controlPoint2: CGPoint(x: 217, y: 420))
    
    
    path.addCurve(to: CGPoint(x: 224, y: 420), controlPoint1: CGPoint(x:220, y: 430), controlPoint2: CGPoint(x: 225, y: 425))
    
    path.addLine(to: CGPoint(x: 227, y: 325))
    
    
    path.addQuadCurve(to: CGPoint(x: 235, y: 313), controlPoint: CGPoint(x: 235, y: 317))
    
    path.addQuadCurve(to: CGPoint(x: 235, y: 294), controlPoint: CGPoint(x: 230, y: 302))
    
    
    path.addQuadCurve(to: CGPoint(x: 228, y: 256), controlPoint: CGPoint(x: 230, y: 260))
    
    
    path.addLine(to: CGPoint(x: 247, y: 273))
   
    
    
    path.addCurve(to: CGPoint(x: 235, y: 294), controlPoint1: CGPoint(x:250, y: 280), controlPoint2: CGPoint(x: 236, y: 291))
    

    
    path.addCurve(to: CGPoint(x: 238, y: 314), controlPoint1: CGPoint(x:230, y: 313), controlPoint2: CGPoint(x: 235, y: 313))
    
    path.addCurve(to: CGPoint(x: 246.5, y: 316), controlPoint1: CGPoint(x:245, y: 317), controlPoint2: CGPoint(x: 246, y: 314))

    path.addLine(to: CGPoint(x: 245, y: 310))

    
    path.addCurve(to: CGPoint(x: 269, y: 275), controlPoint1: CGPoint(x:270, y: 285), controlPoint2: CGPoint(x: 270, y: 272))
    
    path.addCurve(to: CGPoint(x: 224, y: 236), controlPoint1: CGPoint(x:232, y: 235), controlPoint2: CGPoint(x: 220, y: 235))
   
    path.addLine(to: CGPoint(x: 173, y: 233))
    
   // path.addLine(to: CGPoint(x: 227, y: 255))
    
    Layer.path = path.cgPath

    view.layer.mask = Layer
    
    Layer.fillColor = CGColor(srgbRed: 96/255, green: 180/255, blue: 95/255, alpha: 1)
    Layer.lineWidth = 1
    Layer.strokeColor = UIColor.black.cgColor
    
    return Layer
}

func whiteBodyLayer()->CAShapeLayer
{
    let view = UIView()
    
    let Layer = CAShapeLayer()
    
    let path = UIBezierPath()
    
    path.move(to: CGPoint(x: 178, y: 235))
    
    path.addCurve(to: CGPoint(x: 184, y: 321), controlPoint1: CGPoint(x:157, y: 300), controlPoint2: CGPoint(x: 158, y: 310))
    
  
    path.addCurve(to: CGPoint(x: 200, y: 322), controlPoint1: CGPoint(x:194, y: 323), controlPoint2: CGPoint(x: 194, y: 322))
    
    path.addCurve(to: CGPoint(x: 218, y: 237), controlPoint1: CGPoint(x:234, y: 316), controlPoint2: CGPoint(x: 232, y: 300))
    
    path.close()
    
    Layer.path = path.cgPath

    view.layer.mask = Layer
    
    Layer.fillColor = CGColor(red: 245/255, green: 245/255, blue: 245/255, alpha: 1)
    Layer.lineWidth = 1
    Layer.strokeColor = UIColor.black.cgColor
    
    return Layer
    
}

func bodyStarLayer() -> CAShapeLayer {
    
    let view = UIView()
    
    let Layer = CAShapeLayer()
    
    let path = UIBezierPath()
    
    path.move(to: CGPoint(x: 196, y: 254))
    
    
    path.addCurve(to: CGPoint(x: 188, y: 269), controlPoint1: CGPoint(x:188, y: 269), controlPoint2: CGPoint(x: 189, y: 269))
    
    
    path.addLine(to: CGPoint(x: 171, y: 275))
    
    path.addLine(to: CGPoint(x: 183, y: 283))

    path.addLine(to: CGPoint(x: 178, y: 304))

    path.addLine(to: CGPoint(x: 195, y: 293))
    
    path.addLine(to: CGPoint(x: 211, y: 302))
    
    path.addLine(to: CGPoint(x: 210, y: 285))
    
    path.addLine(to: CGPoint(x: 220, y: 275))
    
   path.addLine(to: CGPoint(x: 204, y: 269))
    
    path.close()
    
    
    Layer.path = path.cgPath

    view.layer.mask = Layer
    
    Layer.fillColor = CGColor(red: 239/255, green: 216/255, blue: 79/255, alpha: 1)
    Layer.lineWidth = 1
    Layer.strokeColor = UIColor.black.cgColor
    
    return Layer
}

func mouth2Layer()->CAShapeLayer
{
    let view = UIView()
    
    let Layer = CAShapeLayer()
   
    let path = UIBezierPath()
    
    path.move(to: CGPoint(x: 193, y: 211))

    path.addCurve(to: CGPoint(x: 210, y: 216), controlPoint1: CGPoint(x:190, y: 212), controlPoint2: CGPoint(x: 200, y: 210))


    path.addCurve(to: CGPoint(x: 187, y: 218), controlPoint1: CGPoint(x:200, y: 230), controlPoint2: CGPoint(x: 190, y: 232))


    path.addCurve(to: CGPoint(x: 192, y: 211), controlPoint1: CGPoint(x:190, y: 213), controlPoint2: CGPoint(x: 190, y: 213))
    
    path.close()
    
    Layer.path = path.cgPath

    view.layer.mask = Layer
    
    Layer.fillColor = CGColor(red: 196/255, green: 101/255, blue: 111/255, alpha: 1)
    Layer.lineWidth = 1
    Layer.strokeColor = UIColor.black.cgColor
    
    return Layer
    
}

func mouth3Layer() ->CAShapeLayer {
    let view = UIView()
    
    let Layer = CAShapeLayer()
   
    let path = UIBezierPath()
    
    
    path.move(to: CGPoint(x: 185, y: 212))
    
    path.addLine(to: CGPoint(x: 192, y: 211))
    
    path.addLine(to: CGPoint(x: 187, y: 219))
    
    path.close()
    
    Layer.path = path.cgPath

    view.layer.mask = Layer
    
    Layer.fillColor = CGColor(red: 52/255, green: 30/255, blue: 32/255, alpha: 1)
    Layer.lineWidth = 1
    Layer.strokeColor = UIColor.black.cgColor
    
    return Layer
}


func littleStarLayer() ->CAShapeLayer {
    let view = UIView()
    
    let Layer = CAShapeLayer()
   
    let path = UIBezierPath()
    
    
    path.move(to: CGPoint(x: 205, y: 49))
    
    path.addLine(to: CGPoint(x: 202, y: 54.5))
    
    path.addLine(to: CGPoint(x: 197, y: 54.5))
    
    path.addLine(to: CGPoint(x: 201, y: 59.5))

    path.addLine(to: CGPoint(x: 200, y: 65.5))
    
    path.addLine(to: CGPoint(x: 205, y: 61.5))
    
    path.addLine(to: CGPoint(x: 210, y: 64.5))

    path.addLine(to: CGPoint(x: 209.5, y: 58.5))
    
    path.addLine(to: CGPoint(x: 214, y: 55.5))
    
    path.addLine(to: CGPoint(x: 209, y: 54.5))
    
    path.close()

    Layer.path = path.cgPath

    view.layer.mask = Layer
    
    Layer.fillColor = CGColor(red: 148/255, green: 57/255, blue: 63/255, alpha: 1)
    Layer.lineWidth = 1
    Layer.strokeColor = UIColor.black.cgColor
    
    return Layer
}


