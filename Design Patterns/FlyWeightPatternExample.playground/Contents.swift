import UIKit




protocol CircleFlyweight {
    func drawCircle(point: CGPoint)
}

class SharedCircle: CircleFlyweight {
    func drawCircle(point: CGPoint) {
        // Write code for drawing circle
    }
    
    private let colour: UIColor
    
    init (colour: UIColor) {
        self.colour = colour
    }
}

class CircleFlyWeightfactory {
    
    private var circlesRepository: [UIColor: SharedCircle] = [:]
    
    func getCircleWith(colour: UIColor) -> CircleFlyweight {
        if let circle = circlesRepository[colour] {
            return circle
        } else {
            let circle = SharedCircle(colour: colour)
            circlesRepository[colour] = circle
            return circle
        }
    }
}

let circle = CircleFlyWeightfactory().getCircleWith(colour: .red)
circle.drawCircle(point: CGPoint(x: 0, y: 0))
