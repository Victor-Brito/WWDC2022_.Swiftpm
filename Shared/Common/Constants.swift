import Foundation
import CoreGraphics
import SpriteKit

// ------ DELAY FUNCTION  ------ //
public func delay(_ delay:Double, closure:@escaping ()->()) {
    let when = DispatchTime.now() + delay
    DispatchQueue.main.asyncAfter(deadline: when, execute: closure)
}

// ------ NODES SIZES AND ANCHORPOINT  ------ //
/// <#Description#>
public struct Constants {
    public static let sceneSize = CGSize(width: 640, height: 480)
    public static let actionSize = CGSize(width: 550, height: 140)
    public static let animSize = CGSize(width: 300, height: 225)
    public static let anchorPoint = CGPoint(x: 0, y: 0)
    public static var moveConstant: CGFloat = 50
}

/// <#Description#>
public struct FeedBackTouch {
    public static let hapticH = UIImpactFeedbackGenerator(style: .heavy)
    public static let hapticM = UIImpactFeedbackGenerator(style: .medium)
    public static let hapticL = UIImpactFeedbackGenerator(style: .light)
}
