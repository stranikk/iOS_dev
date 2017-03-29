//
//  AppDelegate.h
//  BMSTU-Map
//
//  Created by Никита Курганов on 29.03.17.
//  Copyright © 2017 Никита Курганов. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

