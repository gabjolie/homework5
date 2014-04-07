//
//  AppDelegate.m
//  homework5
//
//  Created by Gabriele Angeline on 4/6/14.
//  Copyright (c) 2014 Gabriele Angeline. All rights reserved.
//

#import "AppDelegate.h"
#import "NewsFeedViewController.h"
#import "NotificationsViewController.h"
#import "RequestsViewController.h"
#import "MessagesViewController.h"
#import "MoreViewController.h"


@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    
    // create the view controllers
    NewsFeedViewController *newsFeedViewController = [[NewsFeedViewController alloc] init];
    UINavigationController *firstNavigationController = [[UINavigationController alloc] initWithRootViewController:newsFeedViewController];
    firstNavigationController.tabBarItem.title = @"News Feed";
    firstNavigationController.tabBarItem.image = [UIImage imageNamed:@"News"];
    firstNavigationController.navigationBar.translucent = NO;
    
    
    RequestsViewController *requestsViewController = [[RequestsViewController alloc] init];
    UINavigationController *secondNavigationController = [[UINavigationController alloc] initWithRootViewController:requestsViewController];
    secondNavigationController.tabBarItem.title = @"Requests";
    secondNavigationController.tabBarItem.image = [UIImage imageNamed:@"Requests"];
    secondNavigationController.navigationBar.translucent = NO;

    
    MessagesViewController *messagesViewController = [[MessagesViewController alloc] init];
    UINavigationController *thirdNavigationController = [[UINavigationController alloc] initWithRootViewController:messagesViewController];
    thirdNavigationController.tabBarItem.title = @"Messages";
    thirdNavigationController.tabBarItem.image = [UIImage imageNamed:@"Message"];
    thirdNavigationController.navigationBar.translucent = NO;


    NotificationsViewController *notificationsViewController = [[NotificationsViewController alloc] init];
    UINavigationController *fourthNavigationController = [[UINavigationController alloc] initWithRootViewController:notificationsViewController];
    fourthNavigationController.tabBarItem.title = @"Notifications";
    fourthNavigationController.tabBarItem.image = [UIImage imageNamed:@"Notif"];
    //fourthNavigationController.navigationBar.barTintColor = [UIColor colorWithRed:0.23 green:0.34 blue:0.59 alpha:1];
    fourthNavigationController.navigationBar.tintColor = [UIColor whiteColor];
    fourthNavigationController.navigationBar.translucent = NO;
    
    
    MoreViewController *moreViewController = [[MoreViewController alloc] init];
    UINavigationController *fifthNavigationController = [[UINavigationController alloc] initWithRootViewController:moreViewController];
    fifthNavigationController.tabBarItem.title = @"More";
    fifthNavigationController.tabBarItem.image = [UIImage imageNamed:@"More"];
    fifthNavigationController.navigationBar.translucent = NO;
    

    // Configure the tab bar controller with the two navigation controllers
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    tabBarController.viewControllers = @[firstNavigationController, secondNavigationController, thirdNavigationController, fourthNavigationController, fifthNavigationController];
    
    self.window.rootViewController = tabBarController;
    
    newsFeedViewController.title = @"News Feed";
    requestsViewController.title = @"Requests";
    messagesViewController.title = @"Messages";
    notificationsViewController.title = @"Notifications";
    moreViewController.title = @"More";
    
    
    [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:0.23 green:0.34 blue:0.59 alpha:1]];

    
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
