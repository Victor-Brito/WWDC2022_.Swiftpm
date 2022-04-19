import Foundation
import SpriteKit

/// This class is used by default for sprites that generate folding animation.
public class AnimPaperFoldGeric: SKSpriteNode{
    
    public var foldOneFrames: [SKTexture] = []
    
    /// Here we create an array of textures
    /// - Parameters:
    ///   - imgTexture: This parameter is used to start the name texture through a string
    ///   - imgName: Here the sprites sequence prefix is ​​loaded
    ///   - firstFrame: In the first frame parameter, the initial frame of the asset is selected
    ///   - lastFrame: lastFrame descriptionIn the last frame parameter, the last frame of the asset sequence is selected
    public init (imgTexture: String, imgName: String, firstFrame: Int, lastFrame: Int){
        let PaperAnim = SKTexture(imageNamed: imgTexture)
        super.init(texture: PaperAnim, color: .clear, size: Constants.sceneSize)
        self.anchorPoint = Constants.anchorPoint
        self.scale(to: Constants.animSize)
        for i in firstFrame...lastFrame{
            self.foldOneFrames.append(SKTexture(imageNamed: imgName + "\(i)"))
        }
     }
    
    /// Here the function responsible for calling the folding animation is created
    public func paperFoldAnim(){
        let foldAnimationOne = SKAction.animate(with: foldOneFrames, timePerFrame: 0.5, resize: true, restore: false)
        self.run(foldAnimationOne)
    }
    
     required init?(coder aDecoder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
     }
    
}
