//
//  ProgrammatiqueController.swift
//  plus loin dans UI
//
//  Created by Marame on 30/09/2018.
//  Copyright © 2018 Marame. All rights reserved.
//

import UIKit

class ProgrammatiqueController: UIViewController {

    @IBOutlet weak var scroll: UIScrollView!
    
    var monPremierLabel: UILabel?
    var monPremierBouton: UIButton?
    var maPremiereIV: UIImageView?
    
    var monPremierUIView : UIView?
    override func viewDidLoad() {
        super.viewDidLoad()
        monPremierUIView = UIView(frame: CGRect(x: 30, y: 60, width: 200, height: 50))
        monPremierUIView?.backgroundColor = UIColor(red: 30/255, green: 123/255, blue: 90/255, alpha: 1)
        monPremierUIView?.layer.cornerRadius = 25
        guard monPremierUIView != nil else { return } // juste pour la sécurité (sinon pas la peine puisqu'on vient de crer notre vue (on peutmettre le point d'exclamation sans crainte)
        scroll.addSubview(monPremierUIView!) // on le met en optionnel par qu'on vient juste de la créer (donc elle existe belle et bien)

        
        monPremierLabel = UILabel(frame: CGRect(x: 0, y: monPremierUIView!.frame.maxY + 20, width: view.frame.width, height: 50))
        monPremierLabel?.text = "Coucou je suis un texte"
        monPremierLabel?.numberOfLines = 1
        monPremierLabel?.textColor = UIColor.white
        monPremierLabel?.font = UIFont(name: "Chalkduster", size: 20)
        monPremierLabel?.textAlignment = .left
        scroll.addSubview(monPremierLabel!)
        
        
        let rectDeMonBouton = CGRect(x: view.frame.width / 2 - 75, y: monPremierLabel!.frame.maxY + 220, width: 150, height: 40)
        monPremierBouton = UIButton(frame: rectDeMonBouton)
        monPremierBouton?.setTitle("Appuyez", for: UIControlState.normal)
        monPremierBouton?.tintColor = UIColor.white
        monPremierBouton?.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        monPremierBouton?.backgroundColor = UIColor.black
        monPremierBouton?.layer.borderColor = UIColor.white.cgColor
        monPremierBouton?.layer.borderWidth = 2
        scroll.addSubview(monPremierBouton!)
        
        monPremierBouton?.addTarget(self, action: #selector(boutonAppuye), for: .touchUpInside)
        
        let largeur = view.frame.width - 60
        let rectIV = CGRect(x: 30, y: (view.frame.height / 2) - (largeur / 2), width: largeur, height: largeur)
        maPremiereIV = UIImageView(frame: rectIV)
        maPremiereIV?.image = UIImage(named: "codabee")
        maPremiereIV?.contentMode = .scaleAspectFill
        maPremiereIV?.clipsToBounds = true
        maPremiereIV?.layer.cornerRadius = maPremiereIV!.frame.width / 2
        scroll.addSubview(maPremiereIV!)
        //view.sendSubview(toBack: maPremiereIV!)
        
        scroll.bringSubview(toFront: monPremierBouton!)
        
        maPremiereIV?.isUserInteractionEnabled = true
        maPremiereIV?.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(imageAppuye)))
        
        let couleurs: [UIColor] = [.red, .blue, .white, .black]
        var maximum: CGFloat = (maPremiereIV?.frame.maxY)!
        
        for couleur in couleurs {
            let vue = UIView(frame: CGRect(x: 0, y: maximum + 10, width: view.frame.width, height: 100))
            vue.backgroundColor = couleur
            scroll.addSubview(vue)
            maximum = vue.frame.maxY
        }
        
        scroll.contentSize = CGSize(width: view.frame.width, height: maximum + 100)
    }
    
    @objc func imageAppuye() {
        print("Image touchée")
    }
    
    @objc func boutonAppuye() {
        print("Tu as bien appuyé")
    }
        //        print(monPremierUIView?.frame)
//        print(monPremierUIView?.bounds)
//
//        let secondVue = UIView(frame: monPremierUIView!.frame)
//        secondVue.center.y += 100
//        secondVue.backgroundColor = UIColor.blue
//        view.addSubview(secondVue)
//
//        let troisiemeVue = UIView(frame: monPremierUIView!.bounds)
//        troisiemeVue.center.y += 200
//        troisiemeVue.backgroundColor = UIColor.black
//        view.addSubview(troisiemeVue)

    
}
