import Foundation
import SpriteKit

public class SceneNine: SKScene {
    
    let btnsprite = ButnAction()
    let node = PaperNodeGeneric(imgName: "Interactive8")
    let paperAnim = AnimPaperFoldGeric(imgTexture: "PaperPartEigth0", imgName: "PaperPartEigth", firstFrame: 0, lastFrame: 2)
    let son = StorytellingL(imgName: "son04", animationTime: 9)
    let dad = StorytellingR(imgName: "dad04", animationTime: 9)
    
    public override init() {
        super.init(size: Constants.sceneSize)
    }
    
    public override func didMove(to view: SKView) {
        btnsprite.name = "BtnAction"
        self.addChild(node)
        self.addChild(son)
        self.addChild(dad)
        delay(11.0){
            self.addButtonPosition()
        }
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
                    self.view?.presentScene(SceneTen())
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

