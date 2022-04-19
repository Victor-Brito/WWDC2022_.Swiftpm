import Foundation
import SpriteKit

/// This class is responsible for the generic creation of all nodes with the same size and anchorpoint
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

