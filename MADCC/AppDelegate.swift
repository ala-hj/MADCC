//
//  AppDelegate.swift
//  MADCC
//
//  Created by Alla Hajj on 2/16/16.
//  Copyright © 2016 DCC_APP. All rights reserved.

import UIKit
import Fabric
import TwitterKit
import TwitterCore
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        let notificationSettings = UIUserNotificationSettings(forTypes: [.Badge, .Alert, .Sound], categories: nil)
        UIApplication.sharedApplication().registerUserNotificationSettings(notificationSettings)
        self.createLocalNotification()
        FIRApp.configure()
        
        Fabric.with([Twitter.self])

        return true
    }
    
    func createLocalNotification() {
        
        let localNotification = UILocalNotification()
        localNotification.fireDate = NSDate(timeIntervalSinceNow: 10)
        localNotification.applicationIconBadgeNumber = 1
        localNotification.soundName = UILocalNotificationDefaultSoundName
        
        
        localNotification.userInfo = ["message": "Welcome to MADCC, for any feedback please contact via E-mail: Scardeathte@gmail.com"]
        
        localNotification.alertBody = "Welcome to MADCC, for any feedback please contact via E-mail: Scardeathte@gmail.com."
        UIApplication.sharedApplication().scheduleLocalNotification(localNotification)
        
    }
    func application(application: UIApplication, didReceiveLocalNotification notification: UILocalNotification) {
        if application.applicationState == .Active {
            // inside
            
        }
        self.takeAcitionWithNotification(notification)
    }
    
    func takeAcitionWithNotification(localNotification: UILocalNotification) {
        let notificationMessage = localNotification.userInfo!["message" as String]
        
        let username = "User"
        
        let alertController = UIAlertController(title: "Hey, \(username)", message: notificationMessage as? String, preferredStyle: .Alert)
    let reminderLater = UIAlertAction(title: "Remind Me Later", style: .Default, handler: nil)
    let sureAcition = UIAlertAction(title: "Don't Bother me >:(!", style: .Default) { (ACTION) -> Void in
        let tabBarController = self.window?.rootViewController as! UITabBarController
        tabBarController.selectedIndex = 0
        
        // For the tab bar from the up sider :).
        }
        alertController.addAction(reminderLater)
        alertController.addAction(sureAcition)
        self.window?.rootViewController?.presentViewController(alertController, animated: true, completion: nil)
    }
    


    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

