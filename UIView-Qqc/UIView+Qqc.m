//
//  UIView+Qqc.m
//  QqcFramework
//
//  Created by mahailin on 15/8/7.
//  Copyright (c) 2015年 admin. All rights reserved.
//

#import "UIView+Qqc.h"

@implementation UIView (Qqc)

/**
 *  设置size
 *
 *  @param size 给定的size
 */
- (void)setSize:(CGSize)size
{
    CGPoint origin = self.frame.origin;
    self.frame = CGRectMake(origin.x, origin.y, size.width, size.height);
}

/**
 *  取出size
 *
 *  @return 返回取到的size
 */
- (CGSize)size
{
    return self.frame.size;
}

/**
 *  设置左边距
 *
 *  @param left 给定的左间距
 */
- (void)setLeft:(CGFloat)left
{
    CGRect frame = self.frame;
    frame.origin.x = left;
    self.frame = frame;
}

/**
 *  取出左间距
 *
 *  @return 返回左间距
 */
- (CGFloat)left
{
    return CGRectGetMinX(self.frame);
}

/**
 *  设置左边距+宽度
 *
 *  @param right 左边距+宽度
 */
- (void)setRight:(CGFloat)right
{
    CGRect frame = self.frame;
    frame.origin.x = right - CGRectGetWidth(frame);
    self.frame = frame;
}

/**
 *  返回左边距+宽度
 *
 *  @return 左边距+宽度
 */
- (CGFloat)right
{
    return CGRectGetMaxX(self.frame);
}

/**
 *  设置上边距
 *
 *  @param top 给定上边距
 */
- (void)setTop:(CGFloat)top
{
    CGRect frame = self.frame;
    frame.origin.y = top;
    self.frame = frame;
}

/**
 *  返回上边距
 *
 *  @return 上边距
 */
- (CGFloat)top
{
    return CGRectGetMinY(self.frame);
}

/**
 *  设置上边距+高度
 *
 *  @param bottom 给定的上边距+高度
 */
- (void)setBottom:(CGFloat)bottom
{
    CGRect frame = self.frame;
    frame.origin.y = bottom - CGRectGetHeight(frame);
    self.frame = frame;
}

/**
 *  取出上边距+高度
 *
 *  @return 返回上边距+高度
 */
- (CGFloat)bottom
{
    return CGRectGetMaxY(self.frame);
}

/**
 *  设置横轴中心位置
 *
 *  @param centerX 给定横轴中心位置
 */
- (void)setCenterX:(CGFloat)centerX
{
    self.center = CGPointMake(centerX, self.center.y);
}

/**
 *  取出横轴中心位置
 *
 *  @return 返回横轴中心位置
 */
- (CGFloat)centerX
{
    return self.center.x;
}

/**
 *  设置纵轴中心位置
 *
 *  @param centerY 返回纵轴中心位置
 */
- (void)setCenterY:(CGFloat)centerY
{
    self.center = CGPointMake(self.center.x, centerY);
}

/**
 *  取出纵轴中心位置
 *
 *  @return 返回纵轴中心位置
 */
- (CGFloat)centerY
{
    return self.center.y;
}

/**
 *  设置宽度
 *
 *  @param width 给定的宽度
 */
- (void)setWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = CGRectStandardize(frame);
}

/**
 *  取出宽度
 *
 *  @return 返回宽度
 */
- (CGFloat)width
{
    return CGRectGetWidth(self.frame);
}

/**
 *  设置高度
 *
 *  @param height 给定的高度
 */
- (void)setHeight:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = CGRectStandardize(frame);
}

/**
 *  取出高度
 *
 *  @return 返回高度
 */
- (CGFloat)height
{
    return CGRectGetHeight(self.frame);
}

/**
 *  取出内部center
 *
 *  @return 返回内部center
 */
- (CGPoint)innerCenter
{
    return CGPointMake(CGRectGetWidth(self.bounds) / 2, CGRectGetHeight(self.bounds) / 2);
}

/**
 *  遍历出当前view所在的viewcontroller
 *
 *  @return 返回当前view所在的viewcontroller
 */
- (UIViewController *)viewController
{
    for (UIView *view = self; view; view = view.superview)
    {
        if ([view.nextResponder isKindOfClass:[UIViewController class]])
        {
            return (UIViewController *)(view.nextResponder);
        }
    }
    
    return nil;
}

/**
 *  载入同类名的nib文件并返回该view的实例
 *
 *  @return 指定view的实例
 */
+ (instancetype)viewWithClassNamedNib
{
    NSArray *viewArray = [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class])
                                                       owner:self
                                                     options:nil];
    
    if (viewArray.count > 0 && [viewArray[0] isKindOfClass:[self class]])
    {
        return viewArray[0];
    }
    
    return nil;
}

/**
 *  载入同类名的nib文件并返回该view的实例
 *
 *  @return 指定view的实例
 */
+ (instancetype)viewOfClassNamedNib
{
    NSArray *viewArray = [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class])
                                                       owner:self
                                                     options:nil];
    
    if (viewArray.count > 0 && [viewArray[0] isKindOfClass:[self class]])
    {
        return viewArray[0];
    }
    
    return nil;
}

/**
 *  载入同类名的nib文件并返回该view的实例
 *
 *  @return 指定view的实例
 */
+ (instancetype)viewOfClassNamedNibWithBundleName:(NSString*)strBundleName
{
    NSBundle* bundle = [[NSBundle alloc] initWithPath:[[NSBundle mainBundle] pathForResource:strBundleName ofType:@"bundle"]];
    NSArray *viewArray = [bundle loadNibNamed:NSStringFromClass([self class])
                                                                         owner:self
                                                                       options:nil];
    
    if (viewArray.count > 0 && [viewArray[0] isKindOfClass:[self class]])
    {
        return viewArray[0];
    }
    
    return nil;
}

@end
