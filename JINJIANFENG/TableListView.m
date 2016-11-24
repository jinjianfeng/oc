//
//  ChannelListView.m
//  JINJIANFENG
//
//  Created by jinjianfeng on 16/11/24.
//  Copyright © 2016年 jinjianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TableListView.h"

@interface TableListView()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, strong) UITableView *channelListTable;

@end


#pragma mark - 重写tableViewCell

@interface MusicCellView : UITableViewCell

@property (nonatomic, strong) UILabel *bookImageView;

// 显示数据方法
- (void)config:(MusicCellView *)model index:(NSInteger)indexPath;

@end


@implementation MusicCellView

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        _bookImageView = [[UILabel alloc] initWithFrame:CGRectMake(4, 10, 60, 60)];
        [self.contentView addSubview:_bookImageView];

    }
    return self;
}

- (void)config:(MusicCellView *)model index:(NSInteger) indexPath{
    self.bookImageView.text = @"呢哦我是";
}

@end



#pragma mark - TableListView

@implementation TableListView

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
    }
    
    return self;
}


- (UITableView *) TableChannelList:(NSArray *) data
{
    _channelListData = data;
    
    return _channelListTable;
}


#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _channelListData.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *mainCellIdentifier = @"mainCellIdentifier";
    
    MusicCellView *cell = [tableView dequeueReusableCellWithIdentifier:mainCellIdentifier];
    
    if (cell == nil)
    {
        cell = [[MusicCellView alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:mainCellIdentifier];
    }
    
    [cell config:_channelListData[indexPath.row] index:indexPath.row];
    
    return cell;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    //    [self.navigationController pushViewController:subViewController animated:YES];
}

@end
