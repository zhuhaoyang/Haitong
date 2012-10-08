//
//  FirstViewController.h
//  Haitong
//
//  Created by Myth on 12-9-28.
//  Copyright (c) 2012年 Myth. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FourthViewController.h"
@interface FirstViewController : UIViewController
<UIScrollViewDelegate>{
    UIScrollView *m_scrollView;
    FourthViewController *m_FourthViewController;
}

//@property(nonatomic,strong) IBOutlet UIScrollView *m_scrollView;

@end
