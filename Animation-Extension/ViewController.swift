//
//  ViewController.swift
//  Animation-Extension
//
//  Created by mitchell hudson on 8/2/16.
//  Copyright © 2016 mitchell hudson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var box: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        animateThing(self.label,    offsetX: 0,   offsetY: 120,     alpha: 1,  time: 1, delay: 1.4)
        animateThing(self.button,   offsetX: 0,   offsetY: 200,     alpha: 1,  time: 1, delay: 0)
        animateThing(self.box,      offsetX: 400,     offsetY: 0,   alpha: 0,  time: 1, delay: 2.0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}




extension UIViewController {
    
    func animateThing(thing: UIView, offsetX: CGFloat, offsetY: CGFloat, alpha: CGFloat, time: NSTimeInterval, delay: NSTimeInterval) {
        let targetY = thing.center.y
        let targetX = thing.center.x
        let targetAlpha = thing.alpha
        
        thing.center.y = thing.center.y - offsetY
        thing.center.x = thing.center.x - offsetX
        thing.alpha = thing.alpha - alpha
        
        
        UIView.animateWithDuration(time, delay: delay, options: UIViewAnimationOptions.CurveEaseOut, animations: { () -> Void in
            thing.center.y = targetY
            thing.center.x = targetX
            thing.alpha = targetAlpha
        }, completion: nil)
    }
}

