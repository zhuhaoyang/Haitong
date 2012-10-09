//
//  WeiboViewController.m
//  Haitong
//
//  Created by Myth on 12-10-9.
//  Copyright (c) 2012年 Myth. All rights reserved.
//

#import "WeiboViewController.h"

@interface WeiboViewController ()

@end

@implementation WeiboViewController
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
//    if (UIInterfaceOrientationIsLandscape(interfaceOrientation)) {
//        return YES;
//    }
//    else return NO;
    return UIInterfaceOrientationIsLandscape(interfaceOrientation);
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil delegate:(id)delegate
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        m_delegate = delegate;
        
    }
    return self;
}

- (IBAction)close:(id)sender
{
    [m_delegate  removeWeibo];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark tableview delegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}
#pragma mark -
#pragma mark tableview datasource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc]init];
    if ([indexPath row] == 0) {
        UIImageView *img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"icon02"]];
        img.frame = CGRectMake(15, 3.5, 43, 43);
        [cell addSubview:img];
        cell.backgroundColor = [UIColor whiteColor];
        UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(70, 10, 300, 30)];
        lab.text = @"卡依之官方微博";
        [cell addSubview:lab];
    }else if([indexPath row] == 1){
        UIImageView *img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"icon01"]];
        img.frame = CGRectMake(15, 3.5, 43, 43);
        [cell addSubview:img];
        cell.backgroundColor = [UIColor whiteColor];        
        UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(70, 10, 300, 30)];
        lab.text = @"金吉达Chiquita";
        [cell addSubview:lab];
    }
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}


@end
