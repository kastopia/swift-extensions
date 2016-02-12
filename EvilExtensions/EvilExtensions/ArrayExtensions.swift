//
//  ArrayExtensions.swift
//  swift-extensions
//
//  Created by Terry Kwon on 2016-01-08.
//  Copyright © 2016 Evil Wins. All rights reserved.
//

import Foundation

public extension Array {
    
    public func random() -> Element {
        return self[Int(arc4random_uniform(UInt32(self.count)))]
    }
    
    
        func skip(count:Int)->[Element] {
            
            if self.count == 0 {
                return [Element]()
            }
            
            return [Element](self[count..<self.count])
        }

}