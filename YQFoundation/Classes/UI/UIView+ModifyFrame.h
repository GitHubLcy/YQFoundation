//
//  UIView+ModifyFrame.h
//  YQFoundation
//
//  Created by ssl on 2018/5/29.
//  Copyright © 2018年 ssl. All rights reserved.
//  

#import <UIKit/UIKit.h>

@interface UIView (ModifyFrame)

@property float x;
@property float y;
@property float width;
@property float height;
@property (readonly) float maxX;
@property (readonly) float maxY;
@property (readonly) float minY;
@property (readonly) float minX;
@property float midY;
@property float midX;
@property CGPoint origin;
@property CGSize size;
@property (nonatomic,assign) CGFloat left;
@property (nonatomic,assign) CGFloat right;

@property (nonatomic,assign) CGFloat top;
@property (nonatomic,assign) CGFloat bottom;

@property (nonatomic,assign) CGFloat centerX;
@property (nonatomic,assign) CGFloat centerY;

@end
