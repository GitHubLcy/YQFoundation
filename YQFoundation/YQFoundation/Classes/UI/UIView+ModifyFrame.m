//
//  UIView+ModifyFrame.m
//  babyshow_ios
//
//  Created by licy on 14-2-14.
//  Copyright (c) 2014年 platomix.dw. All rights reserved.
//

#import "UIView+ModifyFrame.h"

@implementation UIView (ModifyFrame)

- (float)maxX
{
    return CGRectGetMaxX(self.frame);
}

- (float)maxY
{
    return CGRectGetMaxY(self.frame);
}

- (float)minY
{   
    return CGRectGetMinY(self.frame);
}

- (float)minX
{
    return CGRectGetMinX(self.frame);
}

- (float)midY
{
    return CGRectGetMidY(self.frame);
}

- (float)midX
{
    return CGRectGetMidX(self.frame);
}

- (void)setMidX:(float)midX
{
    CGPoint center = self.center;
    center.x = midX;
    self.center = center;
}

- (void)setMidY:(float)midY
{
    CGPoint center = self.center;
    center.y = midY;
    self.center = center;
}

- (void)makeCorner:(float)r
{
    if (r < 0) r = 0;
    self.layer.cornerRadius = r;
    self.layer.masksToBounds = YES;
}

- (void)setBorderWidth:(CGFloat)borderWidth color:(UIColor *)color
{
    self.layer.borderWidth = borderWidth;
    if (color) {
        self.layer.borderColor = color.CGColor;
    }
}

- (float) x
{
    return self.frame.origin.x;
}

- (void) setX:(float) newX
{
    CGRect frame = self.frame;
    frame.origin.x = newX;
    self.frame = frame;
}

-(float) y
{
    return self.frame.origin.y;
}

- (void) setY:(float) newY
{
    CGRect frame = self.frame;
    frame.origin.y = newY;
    self.frame = frame;
}

- (float)width
{
    return self.frame.size.width;
}

-(void) setWidth:(float) newWidth
{
    CGRect frame = self.frame;
    frame.size.width = newWidth;
    self.frame = frame;
}

- (float) height
{
    return self.frame.size.height;
}

- (void) setHeight:(float) newHeight
{
    CGRect frame = self.frame;
    frame.size.height = newHeight;
    self.frame = frame;
}

- (CGPoint)origin
{
    return self.frame.origin;
}

- (void)setOrigin:(CGPoint)origin
{
    CGRect rect = self.frame;
    rect.origin = CGPointMake(origin.x, origin.y);
    self.frame = rect;
}

- (CGSize)size
{
    return self.frame.size;
}

- (void)setSize:(CGSize)size
{
    CGRect rect = self.frame;
    rect.size = CGSizeMake(size.width, size.height);
    self.frame = rect;
}

- (CGFloat)left
{
    return self.frame.origin.x;
}

- (void) setLeft: (CGFloat) newleft
{
    CGRect newframe = self.frame;
    newframe.origin.x = newleft;
    self.frame = newframe;
}

- (CGFloat)right
{
    return self.frame.origin.x + self.frame.size.width;
}

- (void) setRight: (CGFloat) newright
{
    CGFloat delta = newright - (self.frame.origin.x + self.frame.size.width);
    CGRect newframe = self.frame;
    newframe.origin.x += delta ;
    self.frame = newframe;
}

- (CGFloat)top
{
    return self.frame.origin.y;
}

- (void) setTop: (CGFloat) newtop
{
    CGRect newframe = self.frame;
    newframe.origin.y = newtop;
    self.frame = newframe;
}

- (CGFloat)bottom
{
    return self.frame.origin.y + self.frame.size.height;
}

- (void)setBottom: (CGFloat) newbottom
{
    CGRect newframe = self.frame;
    newframe.origin.y = newbottom - self.frame.size.height;
    self.frame = newframe;
}

- (void)setCenterX:(CGFloat)centerX
{
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}

- (CGFloat)centerX
{
    return self.center.x;
}

- (void)setCenterY:(CGFloat)centerY
{
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}

- (CGFloat)centerY
{
    return self.center.y;
}

- (UIViewController*)viewController
{
    for (UIView* next = [self superview]; next; next = next.superview) {
        UIResponder* nextResponder = [next nextResponder];
        if ([nextResponder isKindOfClass:[UIViewController class]]) {
            return (UIViewController*)nextResponder;
        }
    }
    return nil;
}

- (void)setCornerRadius:(CGFloat)radius borderColor:(UIColor *)color borderWidth:(CGFloat)borderWidth
{
    self.layer.cornerRadius = radius;
    [self setBorderWidth:borderWidth color:color];
}

- (void)setTopCornerBounds:(CGRect)bounds corner:(CGFloat)corner
{
    CGRect mbounds = bounds;
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:mbounds
                                                   byRoundingCorners:UIRectCornerTopLeft | UIRectCornerTopRight
                                                         cornerRadii:CGSizeMake(corner,corner)];
    //创建CALayer图层
    CAShapeLayer*maskLayer = [[CAShapeLayer  alloc]  init];
    maskLayer.frame = mbounds;
    maskLayer.path = maskPath.CGPath;
    self.layer.mask = maskLayer;
}

- (void)setBottomCornerBounds:(CGRect)bounds corner:(CGFloat)corner
{
    CGRect mbounds = bounds;
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:mbounds
                                                   byRoundingCorners:UIRectCornerBottomLeft | UIRectCornerBottomRight
                                                         cornerRadii:CGSizeMake(corner,corner)];
    //创建CALayer图层
    CAShapeLayer*maskLayer = [[CAShapeLayer  alloc]  init];
    maskLayer.frame = mbounds;
    maskLayer.path = maskPath.CGPath;
    self.layer.mask = maskLayer;
}

- (void)removeAllSubViews
{
    for (UIView *subview in self.subviews) {
        [subview removeFromSuperview];
    }
}

- (void)removeSubViewAtIndex:(NSInteger)index
{
    if (self.subviews.count > index) {
        UIView *tempView = [self.subviews objectAtIndex:index];
        [tempView removeFromSuperview];
    }
}


@end
