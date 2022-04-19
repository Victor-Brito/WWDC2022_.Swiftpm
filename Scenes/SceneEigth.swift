import Foundation
import SpriteKit

public class SceneEigth: SKScene, btnActionDelegate {
    
    let node = PaperNodeGeneric(imgName: "Interactive7")
    let paperAnim = AnimPaperFoldGeric(imgTexture: "PaperPartSeven0", imgName: "PaperPartSeven", firstFrame: 0, lastFrame: 2)
    let btnsprite = ButnAction()
    
    public override init() {
        super.init(size: Constants.sceneSize)
    }
    
    public override func didMove(to view: SKView) {
        btnsprite.delegate = self
        self.addChild(node)
        addButtonPosition()
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
            self.view?.presentScene(SceneNine())
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}



