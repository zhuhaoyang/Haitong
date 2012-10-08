//
//  ThirdViewController.m
//  Haitong
//
//  Created by Myth on 12-9-29.
//  Copyright (c) 2012年 Myth. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
        [self.tabBarItem setFinishedSelectedImage:[UIImage imageNamed:@"life000_07.png"] withFinishedUnselectedImage:[UIImage imageNamed:@"life000_07.png"]];

        UIScrollView *m_scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, 1024, 768-20-49)];
        m_scrollView.pagingEnabled = YES;
		m_scrollView.contentSize = CGSizeMake(1024*3,768-20-49);
		m_scrollView.showsHorizontalScrollIndicator = NO;
        m_scrollView.showsVerticalScrollIndicator = NO;
		m_scrollView.scrollsToTop = NO;
		m_scrollView.delegate = self;
        [self.view addSubview:m_scrollView];
        
        NSArray *array =[[NSArray alloc]init];
        array = @[@[@"delicious_02",@"delicious_04",@"delicious_05"],@[@"delicious1_02",@"delicious1_04",@"delicious1_05"],@[@"delicious13_02",@"delicious13_04",@"delicious13_05"]];
//        array = @[@"delicious_02",@"delicious_04",@"delicious_05"];
        
        
        for (int i = 0; i < 3; i++) {
            UIImageView *img1 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[[array objectAtIndex:i] objectAtIndex:0]]];
            img1.frame = CGRectMake(0 + 1024*i, 0, 1024, 136);
            [m_scrollView addSubview:img1];
            
            UIImageView *img2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[[array objectAtIndex:i] objectAtIndex:1]]];
            img2.frame = CGRectMake(0 + 1024*i, 136, 588, 560);
            [m_scrollView addSubview:img2];
            
            UIImageView *img3 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[[array objectAtIndex:i] objectAtIndex:2]]];
            img3.frame = CGRectMake(588 + 1024*i, 136, 436, 612);
            [m_scrollView addSubview:img3];
            
//            UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0 + 1024*i, 128+362, 590, 768-20-49-128-362)];
//            scrollView.pagingEnabled = YES;
//            scrollView.contentSize = CGSizeMake(590*3,768-20-49-128-362);
//            scrollView.showsHorizontalScrollIndicator = NO;
//            scrollView.showsVerticalScrollIndicator = NO;
//            scrollView.scrollsToTop = NO;
//            scrollView.delegate = self;
//
//            
//            UIImageView *img4 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"4.png"]];
//            img4.frame = CGRectMake(0, 0, 590, 768-20-49-128-362);
//            [scrollView addSubview:img4];
//            UIImageView *img5 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"4.png"]];
//            img5.frame = CGRectMake(590, 0, 590, 768-20-49-128-362);
//            [scrollView addSubview:img5];
//            UIImageView *img6 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"4.png"]];
//            img6.frame = CGRectMake(590*2, 0, 590, 768-20-49-128-362);
//            [scrollView addSubview:img6];
//            [m_scrollView addSubview:scrollView];
            
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
    // Do any additional setup after loading the view from its nib.
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
