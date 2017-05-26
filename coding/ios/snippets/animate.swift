UIView.animate(withDuration: 0.5) {
     self.someLabel.center.x += self.view.bounds.width
 }

 // Advanced

 func animateItem (duration: Double, delay: Double, object: UIView) {
     UIView.animate(withDuration: duration, delay: delay, options: .curveEaseOut, animations: {
         object.center.x += self.view.bounds.width
     }) { (true) in

     }
 }
