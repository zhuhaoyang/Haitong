//
//  AppDelegate.m
//  Haitong
//
//  Created by Myth on 12-9-28.
//  Copyright (c) 2012年 Myth. All rights reserved.
//

#import "AppDelegate.h"

#import "FirstViewController.h"

#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourthViewController.h"
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    // Override point for customization after application launch.
//    UIViewController *viewController1 = [[FirstViewController alloc] initWithNibName:@"FirstViewController1" bundle:nil];
//    UIViewController *viewController2 = [[SecondViewController alloc] initWithNibName:@"SecondViewController2" bundle:nil];
//    UIViewController *viewController3 = [[ThirdViewController alloc] initWithNibName:@"ThirdViewController" bundle:nil];
//    UIViewController *viewController4 = [[FourthViewController alloc] initWithNibName:@"FourthViewController" bundle:nil];
//
//    self.tabBarController = [[UITabBarController alloc] init];
//    self.tabBarController.tabBar.frame = CGRectMake(0, 1024-49, 320, 49);
////    self.tabBarController. = [UIColor whiteColor];
//    self.tabBarController.viewControllers = @[viewController1, viewController2,viewController3,viewController4];
//    self.window.rootViewController = self.tabBarController;
//    
//    
//    UIView *m_view = [[UIView alloc]initWithFrame:CGRectMake(0, 320, 49, 1024-320)];
//    m_view.backgroundColor = [UIColor redColor];
//    [self.window addSubview:m_view];
//    [m_view bringSubviewToFront:self.window];
    [self.window makeKeyAndVisible];

    
    if (0) {
        startLoge = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"loading"]];
        startLoge.frame = CGRectMake(0, 0, 768, 1024);
        
        [self.window addSubview:startLoge];
        
        timer = [NSTimer scheduledTimerWithTimeInterval: 1.0
                                                 target: self
                                               selector: @selector(fadeScreen)
                                               userInfo: nil repeats: NO];
    }else {
        [self showMain];
    }

    
    return YES;
}

- (void) fadeScreen
{
	[UIView beginAnimations: nil context: nil];
	[UIView setAnimationDuration: 0.5f];
	[UIView setAnimationDelegate: self];
	[UIView setAnimationDidStopSelector: @selector(finishedFading)];
	self.window.alpha = 0.0;
	[UIView commitAnimations];
}

- (void) finishedFading
{
	[UIView beginAnimations: nil context: nil];
	[UIView setAnimationDuration: 0.5f];
	self.window.alpha = 1.0;
	[UIView commitAnimations];
	[startLoge removeFromSuperview];
    
    [self showMain];
}

- (void)showMain
{
    UIViewController *viewController1 = [[FirstViewController alloc] initWithNibName:@"FirstViewController1" bundle:nil];
    nav = [[UINavigationController alloc]initWithRootViewController:viewController1];
    viewController2 = [[SecondViewController alloc] initWithNibName:@"SecondViewController2" bundle:nil];
    viewController3 = [[ThirdViewController alloc] initWithNibName:@"ThirdViewController" bundle:nil];
//    UIViewController *viewController4 = [[FourthViewController alloc] initWithNibName:@"FourthViewController" bundle:nil];
    
    self.tabBarController = [[UITabBarController alloc] init];
    self.tabBarController.tabBar.frame = CGRectMake(0, 1024-49, 720, 49);
    self.tabBarController.delegate = self;
//    self.tabBarController. = [UIColor whiteColor];
    //    self.tabBarController. = [UIColor whiteColor];
    self.tabBarController.viewControllers = @[nav, viewController2,viewController3];
    self.tabBarController.tabBar.backgroundImage = [UIImage imageNamed:@"bg"];
    self.window.rootViewController = self.tabBarController;
    
    UIButton *btHeart = [UIButton buttonWithType:UIButtonTypeCustom];
    [btHeart setBackgroundImage:[UIImage imageNamed:@"heart"] forState:UIControlStateNormal];
    btHeart.frame = CGRectMake(900, 12, 24, 22);
    [self.tabBarController.tabBar addSubview:btHeart];
    
    UIButton *btWeibo = [UIButton buttonWithType:UIButtonTypeCustom];
    [btWeibo setBackgroundImage:[UIImage imageNamed:@"weibo"] forState:UIControlStateNormal];
    btWeibo.frame = CGRectMake(950, 12, 32, 26);
    [self.tabBarController.tabBar addSubview:btWeibo];
    
    triangle = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"3j"]];
//    triangle.frame = CGRectMake(49-10, 330 + 60, 10, 19);
    triangle.frame = CGRectMake(310+60, 0, 10, 19);
    [self.tabBarController.tabBar addSubview:triangle];
//    UIView *m_View = [[UIView alloc]initWithFrame:CGRectMake(49, 0, 1, 1024)];
//    m_View.backgroundColor = [UIColor grayColor];
//    [self.window addSubview:m_View];

}

- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    [UIView beginAnimations:nil context:context];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    [UIView setAnimationDuration:0.3];
    if ([viewController isEqual:nav]) {
        triangle.frame = CGRectMake(310+60, 0, 10, 19);
    }else if([viewController isEqual:viewController2]){
        triangle.frame = CGRectMake(310+170, 0, 10, 19);
    }else if([viewController isEqual:viewController3]){
        triangle.frame = CGRectMake(310+280, 0, 10, 19);
    }
    [UIView setAnimationDelegate:self];
    [UIView commitAnimations];
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

/*
// Optional UITabBarControllerDelegate method.
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
}
*/

/*
// Optional UITabBarControllerDelegate method.
- (void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed
{
}
*/
@end
