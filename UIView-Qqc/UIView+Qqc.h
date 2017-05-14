//
//  UIView+Qqc.h
//  QqcFramework
//
//  Created by mahailin on 15/8/7.
//  Copyright (c) 2015年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Qqc)

/**
*  控件的大小
*/
@property (nonatomic, assign) CGSize size;

/**
 *  左边距
 */
@property (nonatomic, assign) CGFloat left;

/**
 *  左边距+宽度
 */
@property (nonatomic, assign) CGFloat right;

/**
 *  上边距
 */
@property (nonatomic, assign) CGFloat top;

/**
 *  上边距+高度
 */
@property (nonatomic, assign) CGFloat bottom;

/**
 *  横轴中心位置
 */
@property (nonatomic, assign) CGFloat centerX;

/**
 *  纵轴中心位置
 */
@property (nonatomic, assign) CGFloat centerY;

/**
 *  宽度
 */
@property (nonatomic, assign) CGFloat width;

/**
 *  高度
 */
@property (nonatomic, assign) CGFloat height;

/**
 *  内部center
 */
@property (nonatomic, assign, readonly) CGPoint innerCenter;

/**
 *  遍历出当前view所在的viewcontroller
 */
@property (nonatomic, readonly) UIViewController *viewController;


/**
 *  载入同类名的nib文件并返回该view的实例
 *
 *  @return 指定view的实例
 */
+ (instancetype)viewWithClassNamedNib;

@end
