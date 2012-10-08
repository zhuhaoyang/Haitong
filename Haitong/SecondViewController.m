//
//  SecondViewController.m
//  Haitong
//
//  Created by Myth on 12-9-28.
//  Copyright (c) 2012年 Myth. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self.tabBarItem setFinishedSelectedImage:[UIImage imageNamed:@"life000_05.png"] withFinishedUnselectedImage:[UIImage imageNamed:@"life000_05.png"]];

        UIScrollView *m_scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, 1024, 768-20-49)];
        m_scrollView.pagingEnabled = YES;
		m_scrollView.contentSize = CGSizeMake(1024*3,768-20-49);
		m_scrollView.showsHorizontalScrollIndicator = NO;
        //        m_scrollView.showsVerticalScrollIndicator = NO;
		m_scrollView.scrollsToTop = NO;
		m_scrollView.delegate = self;
        [self.view addSubview:m_scrollView];

        for (int i = 0; i < 3; i++) {
            UIImageView *img1 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"lifestyle_02"]];
            img1.frame = CGRectMake(0 + 1024*i, 0, 1024, 140);
            [m_scrollView addSubview:img1];
            
            UIImageView *img2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"lifestyle_03"]];
            img2.frame = CGRectMake(0 + 1024*i, 140, 698,560 );
            [m_scrollView addSubview:img2];
            
            UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(698 + 1024*i, 140, 325, 560)];
            scrollView.pagingEnabled = YES;
            scrollView.contentSize = CGSizeMake(325,1000);
            scrollView.showsHorizontalScrollIndicator = NO;
            //        m_scrollView.showsVerticalScrollIndicator = NO;
            scrollView.scrollsToTop = NO;
            scrollView.delegate = self;
            [m_scrollView addSubview:scrollView];
            UIImageView *img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"lifestyle_04"]];
            img.frame = CGRectMake(0, 0, 325,560);
            [scrollView addSubview:img];
            
            UIView *m_View = [[UIView alloc]initWithFrame:CGRectMake(0, 653.5+44, 1024, 1.5)];
            m_View.backgroundColor = [UIColor grayColor];
            [self.view addSubview:m_View];
            [self.view bringSubviewToFront:m_View];
        }
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIView *m_View = [[UIView alloc]initWithFrame:CGRectMake(0, 653.5, 1024, 1.5)];
    m_View.backgroundColor = [UIColor grayColor];
    [self.view addSubview:m_View];
    [self.view bringSubviewToFront:m_View];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
