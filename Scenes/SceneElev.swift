import Foundation
import SpriteKit
public class SceneElev: SKScene {
    let background = PaperNodeGeneric(imgName: "AboutTheAuthor")

    public override func didMove(to view: SKView) {
        background.anchorPoint = CGPoint(x: 0.0, y: 0.0)
        background.size = size
        self.addChild(background)
    }

    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {}
}

