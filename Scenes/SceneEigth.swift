import Foundation
import SpriteKit

public class SceneEigth: SKScene {
    
    let node = PaperNodeGeneric(imgName: "Interactive7")
    let paperAnim = AnimPaperFoldGeric(imgTexture: "PaperPartSeven0", imgName: "PaperPartSeven", firstFrame: 0, lastFrame: 2)
    let btnsprite = ButnAction()
    
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
                    self.view?.presentScene(SceneNine())
                }
            }
        }
    }
    
    func addButtonPosition() {
        addChild(btnsprite)
        btnsprite.pulseAnimation()
        btnsprite.position = CGPoint(x: 200, y: 120)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


