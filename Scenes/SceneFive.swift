import Foundation
import SpriteKit

public class SceneFive: SKScene, btnActionDelegate {

    let btnsprite = ButnAction()
    let node = PaperNodeGeneric(imgName: "Interactive4")
    let paperAnim = AnimPaperFoldGeric(imgTexture: "PaperPartFour0", imgName: "PaperPartFour", firstFrame: 0, lastFrame: 2)
    
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
        btnsprite.position = CGPoint(x: 450, y: 270)
    }
    
    /// Method created within the "btnAction Delegate" protocol to implement the node's touchesBegan
    func BtnAction() {
        self.removeAllChildren()
        addChild(paperAnim)
        paperAnim.paperFoldAnim()
        delay(1.5){
            self.removeAllChildren()
            self.view?.presentScene(SceneSix())
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

