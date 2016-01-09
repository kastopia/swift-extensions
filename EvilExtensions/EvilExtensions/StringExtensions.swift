//
//  StringExtensions.swift
//  swift-extensions
//
//  Created by Terry Kwon on 2016-01-08.
//  Copyright © 2016 Evil Wins. All rights reserved.
//

import Foundation

public extension String {
    
    public var trim: String {
        get {
            return self.stringByTrimmingCharactersInSet(.whitespaceCharacterSet())
        }
    }
    
    public var isBlank: Bool {
        get {
            return self.trim.isEmpty
        }
    }
    
    enum AllowedCharacters {
        case Numeric
        case Alphabetic
        case AlphaNumeric
        case AllCharactersIn(String)
    }
    
    public init(randomWithLength length: Int, allowedType: AllowedCharacters) {
        
        let allowedCharsString: String = {
            switch allowedType {
            case .Numeric:
                return "0123456789"
            case .Alphabetic:
                return "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
            case .AlphaNumeric:
                return "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
            case .AllCharactersIn(let allowedCharactersString):
                return allowedCharactersString
            }
        }()
        
        let allowedChars = allowedCharsString.componentsSeparatedByString("")
        var string = ""
        for _ in 0...length {
            string.appendContentsOf(allowedChars.random())
        }
        
        self.init(string)
    }
    
}
