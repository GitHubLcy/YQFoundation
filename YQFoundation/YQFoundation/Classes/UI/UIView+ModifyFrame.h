//
//  UIView+ModifyFrame.h
//  babyshow_ios
//
//  Created by licy on 14-2-14.
//  Copyright (c) 2014年 platomix.dw. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ModifyFrame)

- (void) makeCorner:(float)r;

/**
 * The view controller whose view contains this view.
 */
- (UIViewController*)viewController;

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

/*
 * 为view添加描边颜色和宽度
 */
- (void)setBorderWidth:(CGFloat)borderWidth color:(UIColor *)color;
- (void)setCornerRadius:(CGFloat)radius borderColor:(UIColor *)color borderWidth:(CGFloat)borderWidth;
- (void)setTopCornerBounds:(CGRect)bounds corner:(CGFloat)corner;
- (void)setBottomCornerBounds:(CGRect)bounds corner:(CGFloat)corner;

- (void)removeAllSubViews;
- (void)removeSubViewAtIndex:(NSInteger)index;

@end
