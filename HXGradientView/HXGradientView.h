//
//  HXGradientView.h
//  HXGradientView
//
//  Created by TAL on 2018/7/10.
//  Copyright © 2018年 TAL. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, HXGradientColorDirection) {
    HXGradientColorDirectionNone,
    HXGradientColorDirectionTopToBottom,
    HXGradientColorDirectionBottomToTop,
    HXGradientColorDirectionLeftToRight,
    HXGradientColorDirectionRightToLeft,
    HXGradientColorDirectionCenterToAround
};

@interface HXGradientView : UIView

@end


@interface UIView (HXGradientColor)

- (void)hx_gradientWithColors:(NSArray <UIColor *>*)colors
                         rect:(CGRect)rect
                      context:(CGContextRef)context;

- (void)hx_gradientWithColors:(NSArray <UIColor *>*)colors
                         rect:(CGRect)rect
                drawDirection:(HXGradientColorDirection)direction
                      context:(CGContextRef)context;

@end

@interface HXGradientLabel : UILabel

@property (nonatomic, copy) NSArray <UIColor *> * colors;
@property (nonatomic, assign) HXGradientColorDirection drawDirection;

@end

@interface HXGradientButton : UIButton

@property (nonatomic, copy) NSArray <UIColor *> * colors;
@property (nonatomic, assign) HXGradientColorDirection drawDirection;

@end
