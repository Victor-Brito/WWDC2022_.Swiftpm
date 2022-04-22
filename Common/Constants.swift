import Foundation
import CoreGraphics
import SpriteKit

// ------ DELAY FUNCTION  ------ //
/// In this created function, it is possible to select a delay time for other actions to occur while the selected time
public func delay(_ delay:Double, closure:@escaping ()->()) {
    let when = DispatchTime.now() + delay
    DispatchQueue.main.asyncAfter(deadline: when, execute: closure)
}

// ------ NODES SIZES AND ANCHORPOINT  ------ //
/// With this structure it is possible to select defined patterns, these patterns are responsible for the size of scenes, size of animated scenes and anchor points
public struct Constants {
    public static let sceneSize = CGSize(width: 640, height: 480)
    public static let actionSize = CGSize(width: 550, height: 140)
    public static let animSize = CGSize(width: 300, height: 225)
    public static let anchorPoint = CGPoint(x: 0, y: 0)
    public static var moveConstant: CGFloat = 50
}
