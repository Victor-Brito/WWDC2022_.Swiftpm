import Foundation
import SpriteKit

public class SceneThree: SKScene, btnActionDelegate {

    let paperAnim = AnimPaperFoldGeric(imgTexture: "PaperPartTwo0", imgName: "PaperPartTwo", firstFrame: 0, lastFrame: 1)
    let node = PaperNodeGeneric(imgName: "Interactive2")
    let son = StorytellingL(imgName: "son02", animationTime: 13)
    let dad = StorytellingR(imgName: "dad02", animationTime: 13)
    let btnsprite = ButnAction()
    
    public override init() {
        super.init(size: Constants.sceneSize)
    }
    
    public override func didMove(to view: SKView) {
        btnsprite.delegate = self
        self.addChild(node)
        self.addChild(son)
        self.addChild(dad)
        delay(15.0){
            self.addButtonPosition()
        }
    }
    
    /// Method to add button position in my scene along with its animation
    func addButtonPosition() {
        addChild(btnsprite)
        btnsprite.pulseAnimation()
        btnsprite.position = CGPoint(x: 450, y: 395)
    }
    
    /// Method created within the "btnAction Delegate" protocol to implement the node's touchesBegan
    func BtnAction() {
        FeedBackTouch.hapticM.impactOccurred()
        self.removeAllChildren()
        addChild(paperAnim)
        paperAnim.paperFoldAnim()
        delay(1.0){
            self.removeAllChildren()
            self.view?.presentScene(SceneFour())
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

