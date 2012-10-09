//
//  FourthViewController.m
//  Haitong
//
//  Created by Myth on 12-9-29.
//  Copyright (c) 2012年 Myth. All rights reserved.
//

#import "FourthViewController.h"

@interface FourthViewController ()

@end

@implementation FourthViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
        self.hidesBottomBarWhenPushed = YES;
        isflage = YES;
        
        }
    return self;
}

- (void)hide:(id)sender
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    [UIView beginAnimations:nil context:context];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    [UIView setAnimationDuration:0.3];
    if (btHide.tag == 1) {
        btHide.frame = CGRectMake(1024/2-75, 768-20-10-64, 151, 64);
        [btHide setImage:[UIImage imageNamed:@"life_one_03"] forState:UIControlStateNormal];
        m_view.frame = CGRectMake(0, 768-10-20, 1024, 10);
        m_scrollView.frame = CGRectMake(0, 768-20, 1024, 144);
        btHide.tag = 0;
    }else if(btHide.tag == 0){
        btHide.frame = CGRectMake(1024/2-75, 768-20-10-64-144, 151, 64);
        [btHide setImage:[UIImage imageNamed:@"hide"] forState:UIControlStateNormal];
        m_view.frame = CGRectMake(0, 768-10-20-144, 1024, 10);
        m_scrollView.frame = CGRectMake(0, 768-20-144, 1024, 144);
        btHide.tag = 1;
    }

    
    [UIView setAnimationDelegate:self];
    [UIView commitAnimations];
}

#pragma mark –
#pragma mark onClick
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
//    [super.navigationController setNavigationBarHidden:isflage animated:TRUE];
//    self.navigationController.navigationBar.hidden = isflage;
    if (btPlus.tag) {
        [shareView removeFromSuperview];
        btPlus.tag = 0;
    }else{
        CGContextRef context = UIGraphicsGetCurrentContext();
        [UIView beginAnimations:nil context:context];
        [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
        [UIView setAnimationDuration:0.3];
        
        if (isflage) {
            self.navigationController.navigationBar.alpha = 1;
            self.navigationItem.leftBarButtonItem.enabled = YES;
        }else{
            self.navigationController.navigationBar.alpha = 0;
            self.navigationItem.leftBarButtonItem.enabled = NO;
        }
        [UIView setAnimationDelegate:self];
        [UIView commitAnimations];
        isflage=!isflage;
    }
    
//    [super.navigationController setToolbarHidden:isflage animated:TRUE];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
//    self.navigationController.navigationBar.hidden = YES;
//    [self.navigationController setNavigationBarHidden:YES animated:YES];
    
    imgBg = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"life_one"]];
    imgBg.frame = CGRectMake(0, 0, 1024, 768);
    [self.view addSubview:imgBg];
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    [UIView beginAnimations:nil context:context];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    [UIView setAnimationDuration:0.3];
    self.navigationController.navigationBar.alpha = 0;
    self.navigationItem.leftBarButtonItem.enabled = NO;
    [UIView setAnimationDelegate:self];
    [UIView commitAnimations];
    
    btHide = [UIButton buttonWithType:UIButtonTypeCustom];
//    btHide.showsTouchWhenHighlighted = YES;
    btHide.frame = CGRectMake(1024/2-75, 768-20-10-64, 151, 64);
    [btHide setImage:[UIImage imageNamed:@"life_one_03"] forState:UIControlStateNormal];
    [btHide addTarget:self action:@selector(hide:) forControlEvents:UIControlEventTouchUpInside];
    m_view = [[UIView alloc]initWithFrame:CGRectMake(0, 768-10-20, 1024, 10)];
    m_view.backgroundColor = [UIColor redColor];
    [self.view addSubview:m_view];
    [self.view addSubview:btHide];
    
    m_scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 768-20, 1024, 144)];
    m_scrollView.pagingEnabled = YES;
    m_scrollView.contentSize = CGSizeMake(1024,144);
    m_scrollView.showsHorizontalScrollIndicator = NO;
    m_scrollView.showsVerticalScrollIndicator = NO;
    m_scrollView.scrollsToTop = NO;
    m_scrollView.delegate = self;
    m_scrollView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:m_scrollView];
    
    UIButton *bt1 = [UIButton buttonWithType:UIButtonTypeCustom];
    [bt1 setImage:[UIImage imageNamed:@"little_02"] forState:UIControlStateNormal];
    bt1.frame = CGRectMake(0+248, 0, 132, 144);
    bt1.showsTouchWhenHighlighted = YES;
    [bt1 addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [m_scrollView addSubview:bt1];
    UIButton *bt2 = [UIButton buttonWithType:UIButtonTypeCustom];
    [bt2 setImage:[UIImage imageNamed:@"little_03"] forState:UIControlStateNormal];
    bt2.frame = CGRectMake(132+248, 0, 132, 144);
    bt2.showsTouchWhenHighlighted = YES;
    [bt2 addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [m_scrollView addSubview:bt2];
    UIButton *bt3 = [UIButton buttonWithType:UIButtonTypeCustom];
    [bt3 setImage:[UIImage imageNamed:@"little_04"] forState:UIControlStateNormal];
    bt3.frame = CGRectMake(132*2+248, 0, 132, 144);
    bt3.showsTouchWhenHighlighted = YES;
    [bt3 addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [m_scrollView addSubview:bt3];
    UIButton *bt4 = [UIButton buttonWithType:UIButtonTypeCustom];
    [bt4 setImage:[UIImage imageNamed:@"little_05"] forState:UIControlStateNormal];
    bt4.frame = CGRectMake(132*3+248, 0, 132, 144);
    bt4.showsTouchWhenHighlighted = YES;
    [bt4 addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [m_scrollView addSubview:bt4];

    
    imgBack = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"de"]];
    imgBack.frame = CGRectMake(0, 768, 1024, 519);
    [self.view addSubview:imgBack];
    
    btCancel = [UIButton buttonWithType:UIButtonTypeCustom];
    [btCancel setImage:[UIImage imageNamed:@"life_3_03"] forState:UIControlStateNormal];
    btCancel.frame = CGRectMake(0, 768, 36, 36);
    btCancel.showsTouchWhenHighlighted = YES;
    [btCancel addTarget:self action:@selector(cancelImgBack) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btCancel];

        
    shareView = [[UIView alloc]initWithFrame:CGRectMake(1024-40-300+10, 49+50+22, 300, 200)];
//    shareView = [[UIView alloc]init];
    shareView.backgroundColor = [UIColor blackColor];
    UIButton *btShare1 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btShare1 setImage:[UIImage imageNamed:@"share_02"] forState:UIControlStateNormal];
    btShare1.frame = CGRectMake(0, 10, 300, 50);
    [shareView addSubview:btShare1];
    UIButton *btShare2 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btShare2 setImage:[UIImage imageNamed:@"share_03"] forState:UIControlStateNormal];
    btShare2.frame = CGRectMake(0, 70, 300, 50);
    [shareView addSubview:btShare2];
    UIButton *btShare3 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btShare3 setImage:[UIImage imageNamed:@"share_04"] forState:UIControlStateNormal];
    btShare3.frame = CGRectMake(0, 130, 300, 50);
    [shareView addSubview:btShare3];

    btPlus = [UIButton buttonWithType:UIButtonTypeCustom];
    [btPlus setImage:[UIImage imageNamed:@"life_two_03"] forState:UIControlStateNormal];
    btPlus.frame = CGRectMake(1024-45, 768, 45, 45);
    btPlus.showsTouchWhenHighlighted = YES;
    [btPlus addTarget:self action:@selector(plus) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btPlus];
    
    bottomView = [[UIView alloc]initWithFrame:CGRectMake(0, 768+519, 1024, 155)];
    UIButton *bt5 = [UIButton buttonWithType:UIButtonTypeCustom];
//    [bt5 setImage:[UIImage imageNamed:@"little_02"] forState:UIControlStateNormal];
    [bt5 setImage:[UIImage imageNamed:@"little_02"] forState:UIControlStateNormal];
    bt5.frame = CGRectMake(0+248, 0, 132, 144);
    [bt5 addTarget:self action:@selector(bottomClick:) forControlEvents:UIControlEventTouchUpInside];
    bt5.tag = 1;
    bt5.showsTouchWhenHighlighted = YES;
    [bottomView addSubview:bt5];
    UIButton *bt6 = [UIButton buttonWithType:UIButtonTypeCustom];
    [bt6 setImage:[UIImage imageNamed:@"little_03"] forState:UIControlStateNormal];
    bt6.frame = CGRectMake(132+248, 0, 132, 144);
    bt6.tag = 2;
    bt6.showsTouchWhenHighlighted = YES;
    [bt6 addTarget:self action:@selector(bottomClick:) forControlEvents:UIControlEventTouchUpInside];
    [bottomView addSubview:bt6];
    UIButton *bt7 = [UIButton buttonWithType:UIButtonTypeCustom];
    [bt7 setImage:[UIImage imageNamed:@"little_04"] forState:UIControlStateNormal];
    bt7.frame = CGRectMake(132*2+248, 0, 132, 144);
    bt7.tag = 3;
    bt7.showsTouchWhenHighlighted = YES;
    [bt7 addTarget:self action:@selector(bottomClick:) forControlEvents:UIControlEventTouchUpInside];
    [bottomView addSubview:bt7];
    UIButton *bt8 = [UIButton buttonWithType:UIButtonTypeCustom];
    [bt8 setImage:[UIImage imageNamed:@"little_05"] forState:UIControlStateNormal];
    bt8.frame = CGRectMake(132*3+248, 0, 132, 144);
    bt8.tag = 4;
    bt8.showsTouchWhenHighlighted = YES;
    [bt8 addTarget:self action:@selector(bottomClick:) forControlEvents:UIControlEventTouchUpInside];
    [bottomView addSubview:bt8];
    [self.view addSubview:bottomView];
    triangle = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"3j2"]];
    triangle.frame = CGRectMake(307, 768+519, 14, 9);
    [self.view addSubview:triangle];
   
}

- (void)bottomClick:(id)sender
{
    UIButton *bt = sender;
    CGContextRef context = UIGraphicsGetCurrentContext();
    [UIView beginAnimations:nil context:context];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    [UIView setAnimationDuration:0.3];
    switch (bt.tag) {
        case 1:
            triangle.frame = CGRectMake(307, 519+44+50, 14, 9);
            break;
        case 2:
            triangle.frame = CGRectMake(307+132, 519+44+50, 14, 9);
            break;
        case 3:
            triangle.frame = CGRectMake(307+264, 519+44+50, 14, 9);
            break;
        case 4:
            triangle.frame = CGRectMake(307+396, 519+44+50, 14, 9);
            break;
        default:
            break;
    }
    [UIView setAnimationDelegate:self];
    [UIView commitAnimations];
}

- (void)plus
{
//    shareView.frame = CGRectMake(1024-40, 49+50, 0, 0);
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    [UIView beginAnimations:nil context:context];
//    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
//    [UIView setAnimationDuration:0.3];
//    shareView.frame = CGRectMake(1024-40-300, 49+50, 300, 200);
    if (btPlus.tag) {
        [shareView removeFromSuperview];
        btPlus.tag = 0;
    }else{
        [self.view addSubview:shareView];
        [self.view bringSubviewToFront:btPlus];
        btPlus.tag = 1;
    }

//    [UIView setAnimationDelegate:self];
//    [UIView commitAnimations];

}

- (void)cancelImgBack
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    [UIView beginAnimations:nil context:context];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    [UIView setAnimationDuration:0.3];
    btCancel.frame = CGRectMake(0, 768, 36, 36);
    btPlus.frame = CGRectMake(1024-45, 768, 45, 45);
    imgBack.frame = CGRectMake(0, 768, 1024, 519);
    btHide.frame = CGRectMake(1024/2-75, 768-20-10-64-144, 151, 64);
    m_view.frame = CGRectMake(0, 768-10-20-144, 1024, 10);
    m_scrollView.frame = CGRectMake(0, 768-20-144, 1024, 144);
    bottomView.frame = CGRectMake(0, 768+519, 1024, 155);
    triangle.frame = CGRectMake(307, 768+519, 14, 9);
    imgBg.frame = CGRectMake(0, 0, 1024, 768);
    [UIView setAnimationDelegate:self];
    [UIView commitAnimations];

}

- (void)click
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    [UIView beginAnimations:nil context:context];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    [UIView setAnimationDuration:0.3];
    btCancel.frame = CGRectMake(0, 44+52, 36, 36);
    btPlus.frame = CGRectMake(1024-45, 44+52, 45, 45);
    imgBack.frame = CGRectMake(0, 44+50, 1024, 519);
    btHide.frame = CGRectMake(1024/2-75, -64-10-144, 151, 64);
    m_view.frame = CGRectMake(0, -144-10, 1024, 10);
    m_scrollView.frame = CGRectMake(0, -144, 1024, 144);
    bottomView.frame = CGRectMake(0, 519+44+50, 1024, 155);
    triangle.frame = CGRectMake(307, 519+44+50, 14, 9);
    imgBg.frame = CGRectMake(0, -768, 1024, 768);
    [UIView setAnimationDelegate:self];
    [UIView commitAnimations];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
