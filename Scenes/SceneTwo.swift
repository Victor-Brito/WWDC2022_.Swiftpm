import Foundation
import SpriteKit

public class SceneTwo: SKScene {
    
    let node = PaperNodeGeneric(imgName: "Interactive1" )
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
                self.view?.presentScene(SceneThree())
            }
        }
    }
    
    func addButtonPosition() {
        addChild(btnsprite)
        btnsprite.pulseAnimation()
        btnsprite.position = CGPoint(x: 195, y: 235)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
