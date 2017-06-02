//
//  CameraViewController.swift
//  Facemoji
//
//  Created by Kevin Turner on 1/18/17.
//  Copyright © 2017 Kevin Turner. All rights reserved.
//

import UIKit
import AVFoundation
import Messages

class CameraViewController: UIViewController {

    @IBOutlet weak var cameraButton: UIButton!
    @IBOutlet weak var cameraView: UIView!
    @IBOutlet weak var galleryButton: UIButton!
    let gradient = GradientLayer()
    
    //AV Code
    var session: AVCaptureSession?
    var stillImageOutput: AVCapturePhotoOutput?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        cameraButton.layer.insertSublayer(gradient, below: cameraButton.imageView?.layer)
        cameraButton.layer.cornerRadius = 75
        cameraButton.layer.masksToBounds = true
        
        
        
        // Do any additional setup after loading the view.
    }

    
    override func viewDidAppear(_ animated: Bool) {
        session = AVCaptureSession()
        session!.sessionPreset = AVCaptureSessionPresetPhoto
        
        let backCamera = AVCaptureDevice.defaultDevice(withMediaType: AVMediaTypeVideo)
      
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillLayoutSubviews() {
        gradient.frame = cameraButton.bounds
    }
    
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
