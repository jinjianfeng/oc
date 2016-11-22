//
//  ModelController.h
//  JINJIANFENG
//
//  Created by jinjianfeng on 16/11/22.
//  Copyright © 2016年 jinjianfeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DataViewController;

@interface ModelController : NSObject <UIPageViewControllerDataSource>

- (DataViewController *)viewControllerAtIndex:(NSUInteger)index storyboard:(UIStoryboard *)storyboard;
- (NSUInteger)indexOfViewController:(DataViewController *)viewController;

@end

