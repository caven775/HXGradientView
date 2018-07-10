//
//  HXGradientView.m
//  HXGradientView
//
//  Created by TAL on 2018/7/10.
//  Copyright © 2018年 TAL. All rights reserved.
//

#import "HXGradientView.h"

@implementation HXGradientView


@end


@implementation UIView (HXGradientColor)

- (void)hx_gradientWithColors:(NSArray <UIColor *>*)colors
                         rect:(CGRect)rect
                      context:(CGContextRef)context
{
    [self hx_gradientWithColors:colors
                           rect:rect
                  drawDirection:HXGradientColorDirectionTopToBottom
                        context:context];
}

- (void)hx_gradientWithColors:(NSArray <UIColor *>*)colors
                         rect:(CGRect)rect
                drawDirection:(HXGradientColorDirection)direction
                      context:(CGContextRef)context
{
    if (!colors || !colors.count) { return;}
    NSMutableArray * CGColors = [[NSMutableArray alloc] initWithCapacity:colors.count];
    [colors enumerateObjectsUsingBlock:^(UIColor * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [CGColors addObject:(__bridge id)[obj CGColor]];
    }];
    
    CGContextSaveGState(context);
    CGContextScaleCTM(context, 1.0, -1.0);
    CGContextTranslateCTM(context, 0, -rect.size.height);
    
    CGPoint startPoint = CGPointZero;
    CGPoint endPoint = CGPointZero;
    switch (direction) {
        case HXGradientColorDirectionTopToBottom:
        {
            startPoint = CGPointMake(CGRectGetMinX(rect), CGRectGetMaxY(rect));
            endPoint = CGPointMake(CGRectGetMinX(rect), CGRectGetMinY(rect));
            break;
        }
        case HXGradientColorDirectionBottomToTop:
        {
            startPoint = CGPointMake(CGRectGetMinX(rect), CGRectGetMinY(rect));
            endPoint = CGPointMake(CGRectGetMinX(rect), CGRectGetMaxY(rect));
            break;
        }
        case HXGradientColorDirectionLeftToRight:
        {
            startPoint = CGPointMake(CGRectGetMinX(rect), CGRectGetMinY(rect));
            endPoint = CGPointMake(CGRectGetMaxX(rect), CGRectGetMinY(rect));
            break;
        }
        case HXGradientColorDirectionRightToLeft:
        {
            startPoint = CGPointMake(CGRectGetMaxX(rect), CGRectGetMinY(rect));
            endPoint = CGPointMake(CGRectGetMinX(rect), CGRectGetMaxY(rect));
            break;
        }
        case HXGradientColorDirectionCenterToAround:
        {
            startPoint = CGPointMake(CGRectGetMidX(rect), CGRectGetMidY(rect));
            endPoint = CGPointMake(CGRectGetMinX(rect), CGRectGetMaxY(rect));
            break;
        }
        case HXGradientColorDirectionNone:
        {
            break;
        }
    }
    CGGradientRef gradient = CGGradientCreateWithColors(NULL, (__bridge CFArrayRef)CGColors, NULL);
    CGContextDrawLinearGradient(context, gradient, startPoint, endPoint,
                                kCGGradientDrawsBeforeStartLocation | kCGGradientDrawsAfterEndLocation);
    CGGradientRelease(gradient);
    CGContextRestoreGState(context);
}

@end


@implementation HXGradientLabel

- (void)drawRect:(CGRect)rect
{
    if (self.drawDirection == HXGradientColorDirectionNone) {
        self.drawDirection = HXGradientColorDirectionTopToBottom;
    }
    [self hx_gradientWithColors:self.colors
                           rect:rect
                  drawDirection:self.drawDirection
                        context:UIGraphicsGetCurrentContext()];
    [super drawRect:rect];
}

@end


@implementation HXGradientButton

- (void)drawRect:(CGRect)rect
{
    if (self.drawDirection == HXGradientColorDirectionNone) {
        self.drawDirection = HXGradientColorDirectionTopToBottom;
    }
    [self hx_gradientWithColors:self.colors
                           rect:rect
                  drawDirection:self.drawDirection
                        context:UIGraphicsGetCurrentContext()];
    [super drawRect:rect];
}

@end
