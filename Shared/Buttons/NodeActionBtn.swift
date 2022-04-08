import Foundation
import SpriteKit


/// <#Description#>
public class ButnAction: SKSpriteNode{
    
    public var btnframes: [SKTexture] = []
    
    public init (){
        let playBtnTexture = SKTexture(imageNamed: "ButtonAction0")
        super.init(texture: playBtnTexture, color: .clear, size: playBtnTexture.size())
        self.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        
        for i in 0...30  {
            self.btnframes.append(SKTexture(imageNamed: "ButtonAction\(i)"))
        }
    }
    
    /// <#Description#>
    public func pulseAnimation(){
        let animationPulse = SKAction.animate(with: btnframes, timePerFrame: 0.04, resize: true, restore: true)
        self.run(SKAction.repeatForever(animationPulse))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
