//
//  MessagesViewController.swift
//  MessagesExtension
//
//  Created by Kevin Turner on 1/17/17.
//  Copyright © 2017 Kevin Turner. All rights reserved.
//

import UIKit
import Messages

class MessagesViewController: MSMessagesAppViewController {
    
    @IBOutlet weak var createButton: UIButton!
    let gradient = GradientLayer()
    var cameraVC : UIViewController?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        gradient.frame = CGRect(x: 0, y: 0, width: createButton.bounds.size.width , height: createButton.frame.size.height)
        createButton.layer.addSublayer(gradient)
        createButton.layer.masksToBounds = true
        createButton.layer.cornerRadius = 15
        
    }
    
    override func viewWillLayoutSubviews() {
        gradient.frame = CGRect(x: 0, y: 0, width: createButton.bounds.size.width, height: createButton.frame.size.height)
    }
    

    @IBAction func createFacemoji(_ sender: Any) {
        
        let storyboard = UIStoryboard.init(name: "MainInterface", bundle: nil)
        let cameraVC = storyboard.instantiateViewController(withIdentifier: "camera")
        self.addChildViewController(cameraVC)
        cameraVC.didMove(toParentViewController: self)
        cameraVC.view.frame = self.view.frame
        self.view.addSubview(cameraVC.view)
        self.requestPresentationStyle(.expanded)
        self.cameraVC = cameraVC
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Conversation Handling
    
    override func willBecomeActive(with conversation: MSConversation) {
        // Called when the extension is about to move from the inactive to active state.
        // This will happen when the extension is about to present UI.
        
        // Use this method to configure the extension and restore previously stored state.
    }
    
    override func didResignActive(with conversation: MSConversation) {
        // Called when the extension is about to move from the active to inactive state.
        // This will happen when the user dissmises the extension, changes to a different
        // conversation or quits Messages.
        
        // Use this method to release shared resources, save user data, invalidate timers,
        // and store enough state information to restore your extension to its current state
        // in case it is terminated later.
    }
   
    override func didReceive(_ message: MSMessage, conversation: MSConversation) {
        // Called when a message arrives that was generated by another instance of this
        // extension on a remote device.
        
        // Use this method to trigger UI updates in response to the message.
    }
    
    override func didStartSending(_ message: MSMessage, conversation: MSConversation) {
        // Called when the user taps the send button.
    }
    
    override func didCancelSending(_ message: MSMessage, conversation: MSConversation) {
        // Called when the user deletes the message without sending it.
    
        // Use this to clean up state related to the deleted message.
    }
    
    override func willTransition(to presentationStyle: MSMessagesAppPresentationStyle) {
        // Called before the extension transitions to a new presentation style.
    
        // Use this method to prepare for the change in presentation style.
        if presentationStyle == .compact {
            self.cameraVC?.removeFromParentViewController()
            self.cameraVC?.view.removeFromSuperview()
        }
    }
    
    override func didTransition(to presentationStyle: MSMessagesAppPresentationStyle) {
        // Called after the extension transitions to a new presentation style.
    
        // Use this method to finalize any behaviors associated with the change in presentation style.
    }

}
