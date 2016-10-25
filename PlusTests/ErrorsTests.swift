//
//  ErrorsTests.swift
//  Plus
//
//  Created by Christian Otkjær on 25/10/16.
//  Copyright © 2016 Silverback IT. All rights reserved.
//

import XCTest

@testable import Plus

class ErrorsTests: XCTestCase
{
    func test_error()
    {
        XCTAssertNotNil(NSError(domain: "NSPersistentStoreCoordinator", code: 1, description: "Failed to create NSPersistentStoreCoordinator", reason: "Could not find ManagedObject model called \"Model\" in \(Bundle(for: ErrorsTests.self))", underlyingError: nil))
    }
}
