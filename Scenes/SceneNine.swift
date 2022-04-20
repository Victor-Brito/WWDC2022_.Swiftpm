import Foundation
import SpriteKit

public class SceneNine: SKScene, btnActionDelegate {

    let btnsprite = ButnAction()
    let node = PaperNodeGeneric(imgName: "Interactive8")
    let paperAnim = AnimPaperFoldGeric(imgTexture: "PaperPartEigth0", imgName: "PaperPartEigth", firstFrame: 0, lastFrame: 2)
    let son = StorytellingL(imgName: "son04", animationTime: 13)
    let dad = StorytellingR(imgName: "dad04", animationTime: 13)
    
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
        btnsprite.position = CGPoint(x: 200, y: 120)
    }
    
    /// Method created within the "btnAction Delegate" protocol to implement the node's touchesBegan
    func BtnAction() {
        FeedBackTouch.hapticM.impactOccurred()
        self.removeAllChildren()
        addChild(paperAnim)
        paperAnim.paperFoldAnim()
        delay(1.5){
            self.removeAllChildren()
            self.view?.presentScene(SceneTen())
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

