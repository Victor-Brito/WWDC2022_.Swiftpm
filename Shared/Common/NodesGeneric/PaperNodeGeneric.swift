import Foundation
import SpriteKit

 public class PaperNodeGeneric: SKSpriteNode {
    
   public init (imgName: String){
       let node = SKTexture(imageNamed: imgName)
       super.init(texture: node, color: .clear, size: Constants.sceneSize)
       self.anchorPoint = CGPoint(x: 0.0, y: 0.0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

