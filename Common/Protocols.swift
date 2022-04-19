import Foundation

/// The creation of this protocol was made to optimize the touchesBegan within each scene. Every "NodeActionBtn" belongs to an SKSpriteNode, in this way it is possible to implement within the class of a "NodeActionBtn" its own touchesBegan, with the use of a delegate it is possible to control its actions based on a method implemented within this protocol, thus optimizing the call my "NodeBtnAction" inside each scene, just needing to import this protocol and implement the "BtnAction()" method
protocol btnActionDelegate: AnyObject {
    func BtnAction()
}
