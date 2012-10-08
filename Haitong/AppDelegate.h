//
//  AppDelegate.h
//  Haitong
//
//  Created by Myth on 12-9-28.
//  Copyright (c) 2012年 Myth. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>{
    NSTimer *timer;
    UIImageView *startLoge;
    UIView *m_view;
    UINavigationController *nav;
    UIViewController *viewController2;
    UIViewController *viewController3;
    UIImageView *triangle;
}
- (void)fadeScreen;
- (void)finishedFading;
- (void)showMain;

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UITabBarController *tabBarController;

@end
