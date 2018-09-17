//
//  UIViewController+Utils.swift
//  OrangeWill
//
//  Created by MCA 2 on 27/08/18.
//  Copyright © 2018 Hupp Technologies. All rights reserved.
//

import UIKit
import SDWebImage
import SimpleImageViewer

extension UIViewController{
    func setScreeName(name: String) {
        self.title = name
        self.sendScreenView(screenName: name)
    }
    func sendScreenView(screenName : String) {
        guard let tracker = GAI.sharedInstance().defaultTracker else { return }
        tracker.set(kGAIScreenName, value: screenName)
        guard let builder = GAIDictionaryBuilder.createScreenView() else { return }
        tracker.send(builder.build() as [NSObject : AnyObject])
    }
    var appDelegate:AppDelegate{
        return UIApplication.shared.delegate as! AppDelegate
    }
    func addEmptyView(){
        let objEmptyView = EmptyView()
        var center = objEmptyView.center
        center.x = self.view.bounds.width / 2
        center.y = (self.view.frame.height / 2) //- 100
        objEmptyView.center = center
        self.view.addSubview(objEmptyView)
        self.view.bringSubview(toFront: objEmptyView)
    }
    func addEmptyView_AtBottom(){
        let objEmptyView = EmptyView()
        var center = objEmptyView.center
        center.x = self.view.bounds.width / 2
        center.y = (self.view.frame.height / 2) //- 100
        objEmptyView.center = center
        self.view.insertSubview(objEmptyView, at: 0)
        //self.view.bringSubview(toFront: objEmptyView)
    }
    func removeEmptyView(){
        self.view.subviews.forEach { (obj) in
            if obj.isKind(of: EmptyView.self){
                obj.removeFromSuperview()
            }
        }
    }
    func methodFullScreenImagePreview(_ imgView:UIImageView ){
        if (imgView.image?.isEqual(UIImage(named: "img2")))! {
            return
        }
        let configuration = ImageViewerConfiguration { config in
            config.imageView = imgView
        }
        let imageViewerController = ImageViewerController(configuration: configuration)
        imageViewerController.view.backgroundColor = UIColor.clear
        present(imageViewerController, animated: true)
    }
}

class UIViewController_Utils: NSObject {

}
