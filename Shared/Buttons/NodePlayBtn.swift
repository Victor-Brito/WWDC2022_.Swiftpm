import Foundation
import SpriteKit

/// This class creates the button responsible for starting the scene
public class PlayBtn: SKSpriteNode {
    
    public var playbtnframes: [SKTexture] = []
    
    public init(){
        let playBtnTexture = SKTexture(imageNamed: "PlayBtn0")
        super.init(texture: playBtnTexture, color: .clear, size: Constants.sceneSize)
        self.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        self.scale(to: CGSize(width: 298, height: 250))
        self.position = CGPoint(x: UIScreen.main.bounds.width/2, y: UIScreen.main.bounds.height/2)
                for i in 0...6  {
                    self.playbtnframes.append(SKTexture(imageNamed: "PlayBtn\(i)"))
                }
        
    }
    
    /// Function responsible for creating the play button pulsation
    public func pulsePlayBtnAnimation(){
        let animationPulse = SKAction.animate(with: playbtnframes, timePerFrame: 0.2, resize: true, restore: true)
        self.run(SKAction.repeatForever(animationPulse))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}




