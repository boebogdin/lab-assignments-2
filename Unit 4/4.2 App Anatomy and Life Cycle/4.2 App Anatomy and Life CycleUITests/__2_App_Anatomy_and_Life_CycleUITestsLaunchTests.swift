//
//  __2_App_Anatomy_and_Life_CycleUITestsLaunchTests.swift
//  4.2 App Anatomy and Life CycleUITests
//
//  Created by Boe Bogdin on 10/18/22.
//

import XCTest

final class __2_App_Anatomy_and_Life_CycleUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
