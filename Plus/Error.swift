//
//  Error.swift
//  Plus
//
//  Created by Christian Otkjær on 25/10/16.
//  Copyright © 2016 Silverback IT. All rights reserved.
//

import Foundation

extension NSError
{
    public convenience init(
        domain: String,
        code: Int,
        description: String? = nil,
        reason: String? = nil,
        underlyingError: NSError? = nil)
    {
        var errorUserInfo: [String : AnyObject] = [:]
        
        if description != nil
        {
            errorUserInfo[NSLocalizedDescriptionKey] = description as AnyObject?? ?? "" as AnyObject?
        }
        if reason != nil
        {
            errorUserInfo[NSLocalizedFailureReasonErrorKey] = reason as AnyObject?? ?? "" as AnyObject?
        }
        
        if underlyingError != nil
        {
            errorUserInfo[NSUnderlyingErrorKey] = underlyingError
        }
        
        self.init(domain: domain, code: code, userInfo: errorUserInfo)
    }
}
