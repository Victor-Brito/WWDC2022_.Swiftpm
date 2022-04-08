import Foundation
import SpriteKit

public class SceneSix: SKScene, btnActionDelegate {

    let node = PaperNodeGeneric(imgName: "Interactive5")
    let paperAnim = AnimPaperFoldGeric(imgTexture: "PaperPartFive0", imgName: "PaperPartFive", firstFrame: 0, lastFrame: 2)
    let btnsprite = ButnAction()
    
    public override init(){
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
        btnsprite.position = CGPoint(x: 190, y: 270)
    }
    
    func BtnAction() {
        FeedBackTouch.hapticM.impactOccurred()
        self.removeAllChildren()
        addChild(paperAnim)
        paperAnim.paperFoldAnim()
        delay(1.5){
            self.removeAllChildren()
            self.view?.presentScene(SceneSvn())
        }
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

