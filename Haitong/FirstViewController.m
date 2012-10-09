//
//  FirstViewController.m
//  Haitong
//
//  Created by Myth on 12-9-28.
//  Copyright (c) 2012年 Myth. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
//        self.title = NSLocalizedString(@"First", @"First");
//        self.title = @"123";
//        self.tabBarItem.image = [UIImage imageNamed:@"life000_03.png"];
        [self.tabBarItem setFinishedSelectedImage:[UIImage imageNamed:@"tab1"] withFinishedUnselectedImage:[UIImage imageNamed:@"tab1"]];
        self.tabBarItem.image = [UIImage imageNamed:@"tab1"];
//        self.tabBarItem.imageInsets = UIEdgeInsetsMake(-10, -10, -10, -10);
//        self.tabBarItem.finishedSelectedImage.accessibilityFrame = CGRectMake(0, 0, 50, 30);

//        self.tabBarController
        m_scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 450, 1024, 210)];
        m_scrollView.pagingEnabled = YES;
		m_scrollView.contentSize = CGSizeMake(2048,200);
		m_scrollView.showsHorizontalScrollIndicator = NO;
        m_scrollView.showsVerticalScrollIndicator = NO;
		m_scrollView.scrollsToTop = NO;
		m_scrollView.delegate = self;
//        m_scrollView.backgroundColor = [UIColor redColor];
        [self.view addSubview:m_scrollView];
        for (int i = 0; i < 2; i++) {
            UIButton *bt1 = [UIButton buttonWithType:UIButtonTypeCustom];
            [bt1 setImage:[UIImage imageNamed:@"life__04"] forState:UIControlStateNormal];
            bt1.frame = CGRectMake(0+1024*i, 30, 256, 152);
            bt1.showsTouchWhenHighlighted = YES;
            [bt1 addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
            [m_scrollView addSubview:bt1];
            
            UIButton *bt2 = [UIButton buttonWithType:UIButtonTypeCustom];
            [bt2 setImage:[UIImage imageNamed:@"life__07"] forState:UIControlStateNormal];
            bt2.frame = CGRectMake(256+1024*i, 30, 256, 152);
            bt2.showsTouchWhenHighlighted = YES;
            [bt2 addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
            [m_scrollView addSubview:bt2];
            
            UIButton *bt3 = [UIButton buttonWithType:UIButtonTypeCustom];
            [bt3 setImage:[UIImage imageNamed:@"life__10"] forState:UIControlStateNormal];
            bt3.frame = CGRectMake(512+1024*i, 30, 256, 152);
            bt3.showsTouchWhenHighlighted = YES;
            [bt3 addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
            [m_scrollView addSubview:bt3];
            
            UIButton *bt4 = [UIButton buttonWithType:UIButtonTypeCustom];
            [bt4 setImage:[UIImage imageNamed:@"life__12"] forState:UIControlStateNormal];
            bt4.frame = CGRectMake(768+1024*i, 30, 256, 152);
            bt4.showsTouchWhenHighlighted = YES;
            [bt4 addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
            [m_scrollView addSubview:bt4];
        }
//        [self.view bringSubviewToFront:m_scrollView];
//        UIImageView *img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"Screen"]];
//        img.frame = CGRectMake(0, 0, 2048, 200);
//        
//        
//        [m_scrollView addSubview:img];
//        [self.view addSubview:m_scrollView];
//        [self performSelector:@selector(switchFocusImageItems) withObject:nil afterDelay:3];

//        UIButton *bt = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//        bt.frame = CGRectMake(50, 50, 100, 40);
//        [bt addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
////        [bt setBackgroundImage:[UIImage imageNamed:@"Screen"] forState:UIControlStateNormal];
//        [self.view addSubview:bt];
        
        UIImageView *img1 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"life__02"]];
        img1.frame = CGRectMake(0, 0, 1024, 490);
        [self.view addSubview:img1];
        
        UIView *m_View = [[UIView alloc]initWithFrame:CGRectMake(0, 653.5, 1024, 1.5)];
        m_View.backgroundColor = [UIColor grayColor];
        [self.view addSubview:m_View];
        [self.view bringSubviewToFront:m_View];
   
    }
    return self;
}

- (void)click
{
    m_FourthViewController = [[FourthViewController alloc]initWithNibName:@"FourthViewController" bundle:[NSBundle mainBundle]];
    [self.navigationController pushViewController:m_FourthViewController animated:YES];

}

//- (void)switchFocusImageItems
//{
//    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(switchFocusImageItems) object:nil];
//    
//    CGFloat targetX = m_scrollView.contentOffset.x + 256;
//    [self moveToTargetPosition:targetX];
//    
//    [self performSelector:@selector(switchFocusImageItems) withObject:nil afterDelay:3];
//}
//
//
//- (void)moveToTargetPosition:(CGFloat)targetX
//{
//    if (targetX >= m_scrollView.contentSize.width - 768) {
//        targetX = 0.0;
//    }
//    [m_scrollView setContentOffset:CGPointMake(targetX, 0) animated:YES] ;
//}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
//    self.navigationController.navigationBar.hidden = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
