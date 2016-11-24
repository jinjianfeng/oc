//
//  MusicPlayerViewController.m
//  JINJIANFENG
//
//  Created by jinjianfeng on 16/11/23.
//  Copyright © 2016年 jinjianfeng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "STKAudioPlayer.h"
#import "MusicPlayerViewController.h"

@interface MusicPlayerViewController()


@end


@implementation MusicPlayerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    //搜索框
    UISearchBar *searchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 40)];
    [self.view addSubview:searchBar];
    
    
    STKAudioPlayer * audioPlayer = [[STKAudioPlayer alloc] init];
    [audioPlayer play:@"http://gw.alicdn.com/bao/uploaded/LB1hgfXOpXXXXahXpXXXXXXXXXX.mp3"];
}



@end
