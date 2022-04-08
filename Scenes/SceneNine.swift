import Foundation
import SpriteKit

public class SceneNine: SKScene, btnActionDelegate {

    let btnsprite = ButnAction()
    let node = PaperNodeGeneric(imgName: "Interactive8")
    let paperAnim = AnimPaperFoldGeric(imgTexture: "PaperPartEigth0", imgName: "PaperPartEigth", firstFrame: 0, lastFrame: 2)
    let son = StorytellingL(imgName: "son04", animationTime: 9)
    let dad = StorytellingR(imgName: "dad04", animationTime: 9)
    
    public override init() {
        super.init(size: Constants.sceneSize)
    }
    
    public override func didMove(to view: SKView) {
        btnsprite.delegate = self
        self.addChild(node)
        self.addChild(son)
        self.addChild(dad)
        delay(11.0){
            self.addButtonPosition()
        }
    }
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    func addButtonPosition() {
        addChild(btnsprite)
        btnsprite.pulseAnimation()
        btnsprite.position = CGPoint(x: 200, y: 120)
    }
    
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

