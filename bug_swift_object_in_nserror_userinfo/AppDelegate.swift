//
//  AppDelegate.swift
//  bug_swift_object_in_nserror_userinfo
//
//  Created by Heath Borders on 2/19/15.
//  Copyright (c) 2015 Heath Borders. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        let errorWithMySwiftObjectInUserInfo = NSError(
            domain: "Bug",
            code: 1,
            userInfo: [
                "MySwiftObject" : MySwiftObject(),
            ])
        NSLog("errorWithMySwiftObjectInUserInfo: \(errorWithMySwiftObjectInUserInfo)")
        
        // Override point for customization after application launch.
        return true
    }


}

class MySwiftObject: Printable {
    var description: String {
        return "MySwiftObject"
    }
}
