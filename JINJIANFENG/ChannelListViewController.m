//
//  ChannelListViewController.m
//  JINJIANFENG
//
//  Created by jinjianfeng on 16/11/24.
//  Copyright © 2016年 jinjianfeng. All rights reserved.
//

#import "ChannelListViewController.h"
#import "TableListView.h"

@interface ChannelListViewController ()


@end

@implementation ChannelListViewController

#pragma mark - Life Cycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    UITableView *table2 = [[TableListView alloc] init];
    
    [self.view addSubview: table2];
}




@end
