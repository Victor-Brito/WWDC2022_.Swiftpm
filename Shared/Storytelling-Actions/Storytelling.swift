import Foundation
import SpriteKit

/// <#Description#>
public class StorytellingL: SKSpriteNode {
    
    /// <#Description#>
    /// - Parameters:
    ///   - imgName: <#imgName description#>
    ///   - animationTime: <#animationTime description#>
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


/// <#Description#>
public class StorytellingR: SKSpriteNode {
    
    /// <#Description#>
    /// - Parameters:
    ///   - imgName: <#imgName description#>
    ///   - animationTime: <#animationTime description#>
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

