//
//  ImageExtension.swift
//  Coins
//
//  Created by Mustafa Pekdemir on 13.03.2022.
//

import Foundation
import UIKit

class ImageExtension {
    
    let cache = NSCache<NSString, UIImage>()
    
    func setImage(image: UIImage, forKey: String) {
        cache.setObject(image, forKey: forKey as NSString)
    }
    
    func getImage(forKey: String) -> UIImage? {
        return cache.object(forKey: forKey as NSString)
    }
    
    func delete(forKey: String) {
        return cache.removeObject(forKey: forKey as NSString)
    }
}
