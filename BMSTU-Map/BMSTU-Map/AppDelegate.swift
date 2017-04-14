//
//  AppDelegate.swift
//  BMSTU-Map
//
//  Created by Никита Курганов on 02.04.17.
//  Copyright © 2017 Никита Курганов. All rights reserved.
//

import UIKit
import RealmSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
 
    // Устанавливаем БД
    func loadDatabase() {
        
        //создаем объекты пользователей
        let audi1 = Database.getUserObject(
            name: "501ю",
            latitude : 321.123,
            longitude : 123.213
        )
        
        let audi2 = Database.getUserObject(
            name: "419ю",
            latitude : 321.123,
            longitude : 123.213
        )
        
        let audi3 = Database.getUserObject(
            name: "313",
            latitude : 321.123,
            longitude : 123.213
        )
        
        let audi4 = Database.getUserObject(
            name: "315",
            latitude : 321.123,
            longitude : 123.213
        )
        
        let members = [audi1, audi2, audi3, audi4]
        
        //сохраняем наши объекты в хранилище
        let realmInstance = try! Realm()
        try! realmInstance.write {
            for member in members {
                realmInstance.add(member)
            }
        }
        
        //помечаем в Defaults что БД была установлена
        UserDefaults.standard.set(
            true,
            forKey: "db_install"
        )
    }
    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        if !UserDefaults.standard.bool(forKey: "db_install") {
            self.loadDatabase()
        }
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        // Saves changes in the application's managed object context before the application terminates.
    }

}

