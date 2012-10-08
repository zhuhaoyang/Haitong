//
//  FourthViewController.h
//  Haitong
//
//  Created by Myth on 12-9-29.
//  Copyright (c) 2012年 Myth. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FourthViewController : UIViewController
<UIScrollViewDelegate>{
    BOOL isflage;
    UIButton *btHide;
    UIView *m_view;
    UIScrollView *m_scrollView;
    UIImageView *imgBack;
    UIButton *btCancel;
    UIButton *btPlus;
    UIView *shareView;
    UIView *bottomView;
    UIImageView *triangle;
//    UIImageView *img;
}
@end
