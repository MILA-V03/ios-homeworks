//
//  ProfileView.swift
//  Netology_IB_Instruments2
//
//

import UIKit

class ProfileView: UIView {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var text: UITextView!
    
    
    @IBInspectable var textLabelText: String{
        return label.text ?? "No text"
    
}
  var view: UIView
    var nibName: String = "ProfileView"
    
    override init (frame: CGRect) {
        view = UIView(frame: frame)
        super.init(frame: frame)
        setup()
    }
    required init?(coder aDecoder: NSCoder) {
        view = UIView(coder: aDecoder)!
        super.init(coder: aDecoder)
        setup()
    }

    func loadFromNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        _ = UINib(nibName: nibName, bundle: bundle)
        return view
    }
    
    func setup() {
        view = loadFromNib()
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        addSubview(view)
    }
}
     


