//
//  CycleEtFrameController.swift
//  plus loin dans UI
//
//  Created by Marame on 30/09/2018.
//  Copyright © 2018 Marame. All rights reserved.
//

import UIKit

class CycleEtFrameController: UIViewController {

    @IBOutlet weak var vueFrameEtBounds: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
         print("viewDidload")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
        print("Frame -> :\(vueFrameEtBounds.frame)")  // frame c'est par rapport a la vue qui la contient
        print("Bounds -> :\(vueFrameEtBounds.bounds)")// bounds c'est par rapport à lui même
        
        UIView.animate(withDuration: 2, animations: {
            self.vueFrameEtBounds.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi) / 12)
        }) { (succes) in
            print("Frame -> :\(self.vueFrameEtBounds.frame)")  // frame c'est par rapport a la vue qui la contient
            print("Bounds -> :\(self.vueFrameEtBounds.bounds)")// bounds c'est par rapport à lui même
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
