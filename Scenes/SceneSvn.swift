import Foundation
import SpriteKit

public class SceneSvn: SKScene, btnActionDelegate {
    
    let node = PaperNodeGeneric(imgName: "Interactive6")
    let paperAnim = AnimPaperFoldGeric(imgTexture: "PaperPartSix0", imgName: "PaperPartSix", firstFrame: 0, lastFrame: 2)
    let son = StorytellingL(imgName: "son03", animationTime: 11)
    let dad = StorytellingR(imgName: "dad03", animationTime: 11)
    let btnsprite = ButnAction()
    
    public override init(){
        super.init(size: Constants.sceneSize)
    }
    
    public override func didMove(to view: SKView) {
        
        btnsprite.delegate = self
        self.addChild(node)
        self.addChild(son)
        self.addChild(dad)
        delay(13.0){
            self.addButtonPosition()
        }
    }
    
    /// Method to add button position in my scene along with its animation
    func addButtonPosition() {
        addChild(btnsprite)
        btnsprite.pulseAnimation()
        btnsprite.position = CGPoint(x: 450, y: 120)
    }
    
    /// Method created within the "btnAction Delegate" protocol to implement the node's touchesBegan
    func BtnAction() {
        FeedBackTouch.hapticM.impactOccurred()
        self.removeAllChildren()
        addChild(paperAnim)
        paperAnim.paperFoldAnim()
        delay(1.5){
            self.removeAllChildren()
            self.view?.presentScene(SceneEigth())
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


