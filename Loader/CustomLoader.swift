//
//  CustomLoader.swift
//  Loader
//
//  Created by Eryushion Techsol on 15/02/19.
//  Copyright © 2019 200okSolution. All rights reserved.
//

import UIKit
public class CustomLoader: UIView, Modal {
    public var backgroundView = UIView()
    public var dialogView = UIView()
    var imageView = UIImageView()
    convenience public init(image:String) {
        self.init(frame: UIScreen.main.bounds)
        initialize(image: image)
        
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    public func initialize(image:String){
        dialogView.clipsToBounds = true
        backgroundView.frame = frame
        backgroundView.backgroundColor = UIColor.black
        backgroundView.alpha = 0.6
        addSubview(backgroundView)
        dialogView.frame.size = CGSize(width: 250, height: 250)
        imageView.frame.size = CGSize(width: 200 , height: 200)
        imageView.center = dialogView.center
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage.gifImageWithName(image)
        dialogView.addSubview(imageView)
        dialogView.backgroundColor = UIColor.white
        dialogView.layer.cornerRadius = 8
        dialogView.center = backgroundView.center
        addSubview(dialogView)
    }
    public func dismissView(){
        dismiss(animated: false)
    }
}
