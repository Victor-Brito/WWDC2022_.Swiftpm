import Foundation
import SpriteKit

public class SceneOne: SKScene, btnActionDelegate {

    let paperAnim = AnimPaperFoldGeric(imgTexture: "PaperPartOne0", imgName: "PaperPartOne", firstFrame: 0, lastFrame: 1)
    let node = PaperNodeGeneric(imgName: "Interactive0")
    let son = StorytellingL(imgName: "son01", animationTime: 6)
    let dad = StorytellingR(imgName: "dad01", animationTime: 6)
    let btnsprite = ButnAction()
    
    public override init(){
        super.init(size: Constants.sceneSize)
    }
    
    public override func didMove(to view: SKView) {
        btnsprite.delegate = self
        self.addChild(node)
        self.addChild(son)
        self.addChild(dad)
        
        delay(8.0){
            self.addButtonPosition()
        }
    }
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    func addButtonPosition() {
        addChild(btnsprite)
        btnsprite.pulseAnimation()
        btnsprite.position = CGPoint(x: 450, y: 235)
    }
    
    func BtnAction() {
        FeedBackTouch.hapticM.impactOccurred()
        addChild(paperAnim)
        paperAnim.paperFoldAnim()
        delay(1.0){
            self.removeAllChildren()
            self.view?.presentScene(SceneTwo())
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
