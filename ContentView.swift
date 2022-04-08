import SwiftUI
import SpriteKit

struct ContentView: View {
    var scene: SKScene {
        let scene = GameScene()
        scene.size = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        scene.scaleMode = .fill
        return scene
    }

    var body: some View {
        ZStack{
            GeometryReader{
                sizeScreen in
                SpriteView(scene: scene)
                    .frame(width: sizeScreen.size.width, height: sizeScreen.size.height)
            }
        }
        .ignoresSafeArea()
    }
}
