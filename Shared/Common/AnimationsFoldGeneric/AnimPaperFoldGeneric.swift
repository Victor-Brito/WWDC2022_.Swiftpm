import Foundation
import SpriteKit

/// <#Description#>
public class AnimPaperFoldGeric: SKSpriteNode{
    
    public var foldOneFrames: [SKTexture] = []
    
    /// <#Description#>
    /// - Parameters:
    ///   - imgTexture: <#imgTexture description#>
    ///   - imgName: <#imgName description#>
    ///   - firstFrame: <#firstFrame description#>
    ///   - lastFrame: <#lastFrame description#>
    public init (imgTexture: String, imgName: String, firstFrame: Int, lastFrame: Int){
        let PaperAnim = SKTexture(imageNamed: imgTexture)
        super.init(texture: PaperAnim, color: .clear, size: Constants.sceneSize)
        self.anchorPoint = Constants.anchorPoint
        self.scale(to: Constants.animSize)
        for i in firstFrame...lastFrame{
            self.foldOneFrames.append(SKTexture(imageNamed: imgName + "\(i)"))
        }
     }
    
    /// <#Description#>
    public func paperFoldAnim(){
        let foldAnimationOne = SKAction.animate(with: foldOneFrames, timePerFrame: 0.5, resize: true, restore: false)
        self.run(foldAnimationOne)
    }
    
     required init?(coder aDecoder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
     }
    
}
