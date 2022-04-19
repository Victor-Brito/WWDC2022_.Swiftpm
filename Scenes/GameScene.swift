import SpriteKit

public class GameScene: SKScene {
    
    let background = PaperNodeGeneric(imgName: "BG")
    let playbtn = PlayBtn()
    
    public override func didMove(to view: SKView) {
        background.anchorPoint = CGPoint(x: 0.0, y: 0.0)
        background.size = size
        playbtn.name = "PlayButton"
        self.addChild(background)
        self.addChild(playbtn)
        self.playbtn.pulsePlayBtnAnimation()
    }
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let pos = touch.location(in: self)
            let node = self.atPoint(pos)
            
            if node.name == "PlayButton" {
                FeedBackTouch.hapticH.impactOccurred()
                let transition = SKTransition.fade(withDuration: 1)
                self.view?.presentScene(SceneOne(), transition: transition)
            }
        }
    }
}
