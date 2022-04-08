import Foundation
import SpriteKit


/// <#Description#>
public class NodePlaneBtn: SKSpriteNode{
    
    public var btnPlaneFrames: [SKTexture] = []

    public init (){
        let playBtnTexture = SKTexture(imageNamed: "PlaneButton0")
        super.init(texture: playBtnTexture, color: .clear, size: playBtnTexture.size())
        self.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        self.scale(to: CGSize(width: 400, height: 400))
        
        for i in 0...29  {
            self.btnPlaneFrames.append(SKTexture(imageNamed: "PlaneButton\(i)"))
        }
    }
    
    /// <#Description#>
    public func pulseAnimation(){
        let animationPulse = SKAction.animate(with: btnPlaneFrames, timePerFrame: 0.03, resize: true, restore: true)
        self.run(SKAction.repeatForever(animationPulse))
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
