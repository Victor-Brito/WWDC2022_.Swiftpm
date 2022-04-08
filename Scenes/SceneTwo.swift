import Foundation
import SpriteKit

public class SceneTwo: SKScene, btnActionDelegate {

    let node = PaperNodeGeneric(imgName: "Interactive1" )
    let btnsprite = ButnAction()
    
    public override init() {
        super.init(size: Constants.sceneSize)
    }
    
    public override func didMove(to view: SKView) {
        btnsprite.delegate = self
        self.addChild(node)
        addButtonPosition()
    }
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    func addButtonPosition() {
        addChild(btnsprite)
        btnsprite.pulseAnimation()
        btnsprite.position = CGPoint(x: 195, y: 235)
    }
    
    func BtnAction() {
        FeedBackTouch.hapticM.impactOccurred()
        self.removeAllChildren()
        self.view?.presentScene(SceneThree())
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
