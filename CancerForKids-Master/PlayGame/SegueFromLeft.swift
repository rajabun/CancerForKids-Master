//
//  SegueFromLeft.swift
//  BelajarAnimasiDenganSpriteKit
//
//  Created by Muhammad Rajab Priharsanto on 30/08/19.
//  Copyright © 2019 Muhammad Rajab Priharsanto. All rights reserved.
//

import UIKit

class SegueFromLeft: UIStoryboardSegue
{
    override func perform()
    {
        let src = self.source
        let dst = self.destination
        
        src.view.superview?.insertSubview(dst.view, aboveSubview: src.view)
        dst.view.transform = CGAffineTransform(translationX: -src.view.frame.size.width, y: 0)
        
        UIView.animate(withDuration: 0.5,
                       delay: 0.0,
                       options: .curveEaseInOut,
                       animations:
            {
                dst.view.transform = CGAffineTransform(translationX: 0, y: 0)
        },
                       completion:
            { finished in
                src.present(dst, animated: false, completion: nil)
        })
    }
}

//source : https://stackoverflow.com/questions/30763519/ios-segue-left-to-right/31411862
