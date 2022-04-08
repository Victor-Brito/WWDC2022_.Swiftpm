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
        //Button play interaction to change scene
        if let touch = touches.first {
            let pos = touch.location(in: self)
            let node = self.atPoint(pos)
            
            if node.name == "plpaneBtn" {
                FeedBackTouch.hapticH.impactOccurred()
                //self.removeAllChildren()
            }
        }
    }
    
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


