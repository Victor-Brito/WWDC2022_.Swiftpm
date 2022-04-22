import Foundation
import SpriteKit

public class SceneTen: SKScene{
    
    let btnsprite = ButnAction()
    let node = PaperNodeGeneric(imgName: "TableBackGround")
    let planeBtn = NodePlaneBtn()
    
    public override init() {
        super.init(size: Constants.sceneSize)
    }
    
    public override func didMove(to view: SKView) {
        planeBtn.name = "plpaneBtn"
        self.addChild(node)
        addBtnPlane()
    }
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let pos = touch.location(in: self)
            let node = self.atPoint(pos)
            
            if node.name == "plpaneBtn" {
                let transition = SKTransition.fade(withDuration: 5)
                self.view?.presentScene(SceneElev(), transition: transition)
            }
        }
    }
    
    /// Method responsible for adopting the position of the button in the shape of an airplane
    func addBtnPlane() {
        addChild(planeBtn)
        planeBtn.pulseAnimation()
        planeBtn.position = CGPoint(x: 320, y: 275)
        planeBtn.scale(to: CGSize(width: 300, height: 300))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


