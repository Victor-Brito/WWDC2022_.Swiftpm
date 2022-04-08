import Foundation
import SpriteKit

public class SceneFive: SKScene {
    
    let btnsprite = ButnAction()
    let node = PaperNodeGeneric(imgName: "Interactive4")
    let paperAnim = AnimPaperFoldGeric(imgTexture: "PaperPartFour0", imgName: "PaperPartFour", firstFrame: 0, lastFrame: 2)
    
    public override init() {
        super.init(size: Constants.sceneSize)
    }
    
    public override func didMove(to view: SKView) {
        btnsprite.name = "BtnAction"
        self.addChild(node)
        addButtonPosition()
    }
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //Button play interaction to change scene
        if let touch = touches.first {
            let pos = touch.location(in: self)
            let node = self.atPoint(pos)
            
            if node.name == "BtnAction" {
                FeedBackTouch.hapticM.impactOccurred()
                self.removeAllChildren()
                addChild(paperAnim)
                paperAnim.paperFoldAnim()
                delay(1.5){
                    self.removeAllChildren()
                    self.view?.presentScene(SceneSix())
                }
            }
        }
    }
    
    func addButtonPosition() {
        addChild(btnsprite)
        btnsprite.pulseAnimation()
        btnsprite.position = CGPoint(x: 450, y: 270)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

