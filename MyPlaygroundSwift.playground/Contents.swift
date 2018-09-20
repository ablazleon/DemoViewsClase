//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black
        
        view.addSubview(label)
        self.view = view
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()

{ (v: Int) -> Bool in
    return v > 0
}

// Valores asociados a un enum

enum Vehicle {
    case car(String, Int)
    case bicycle
    case other(String)
}

let rect: CGRect = CGRect(1)
let path = UIBezierPath(roundedRect: rect, cornerRadius: 20)

path.lineWidh


let path = UIBezierPath()

path.move(to: CGPoint(x: 10, y:10))
