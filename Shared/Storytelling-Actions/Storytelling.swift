import Foundation
import SpriteKit

/// This class creates the animation responsible for the storytelling interaction that comes in from the left
public class StorytellingL: SKSpriteNode {
    
    /// - Parameters:
    ///   - imgName: Here we load the storytelling card that enters from the left
    ///   - animationTime: Here we select the duration time of each card on the screen
    public init (imgName: String, animationTime: Int){
      let nodeL = SKTexture(imageNamed: imgName)
      super.init(texture: nodeL, color: .clear, size: Constants.actionSize)
      self.anchorPoint = CGPoint(x: 0, y: 0)
      self.position = CGPoint(x: -550, y: 270)
      moveToL()
      delay(Double(animationTime)){
          self.disappear()
      }
   }
    
    public func moveToL(){
        let moveLeft = SKAction.move(to: CGPoint(x: Constants.moveConstant, y: self.position.y), duration: 2.5)
        self.run(moveLeft)
    }
    
    public func disappear(){
        let getOutScreen = SKAction.move(to: CGPoint(x: 650, y: self.position.y), duration: 1.5)
        self.run(getOutScreen)
    }
   
   required init?(coder aDecoder: NSCoder) {
       fatalError("init(coder:) has not been implemented")
   }
}

/// This class creates the animation responsible for the storytelling interaction that comes in from the right
public class StorytellingR: SKSpriteNode {
    
    /// - Parameters:
    ///   - imgName: Here we load the storytelling card that enters from the right
    ///   - animationTime: Here we select the duration time of each card on the screen
    public init (imgName: String, animationTime: Int){
      let nodeL = SKTexture(imageNamed: imgName)
      super.init(texture: nodeL, color: .clear, size: Constants.actionSize)
      self.anchorPoint = CGPoint(x: 0, y: 0)
      self.position = CGPoint(x: 650, y: 100)
      moveToR()
      delay(Double(animationTime)){
          self.disappear()
      }
   }
    
    public func moveToR(){
        let moveRight = SKAction.move(to: CGPoint(x: Constants.moveConstant, y: self.position.y), duration: 2.5)
        self.run(moveRight)
    }
    
    public func disappear(){
        let getOutScreen = SKAction.move(to: CGPoint(x: -600, y: self.position.y), duration: 1.5)
        self.run(getOutScreen)
    }
   
   required init?(coder aDecoder: NSCoder) {
       fatalError("init(coder:) has not been implemented")
   }
}

