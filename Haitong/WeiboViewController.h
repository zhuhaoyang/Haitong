//
//  WeiboViewController.h
//  Haitong
//
//  Created by Myth on 12-10-9.
//  Copyright (c) 2012年 Myth. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol WeiboDelegate;
@interface WeiboViewController : UIViewController{
    IBOutlet UITableView *m_tableView;
//    IBOutlet UIButton *btClose;
    id m_delegate;
}
- (IBAction)close:(id)sender;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil delegate:(id)delegate;
@end

@protocol WeiboDelegate<NSObject>
- (void)removeWeibo;
@end
