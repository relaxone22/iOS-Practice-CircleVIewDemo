//
//  UIView+Draw.h
//  CircleViewDemo
//
//  Created by tonyliu on 28/10/2016.
//  Copyright © 2016 mitake. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Draw)

-(void)drawMoreArc:(CGContextRef)ctx rect:(CGRect)rect radius:(NSInteger)r anglePercent:(double)anglePercent lineWidth:(float)width redValue:(double)red greenValue:(double)green blueValue:(double)blue colorValue:(double)colorValue colorMultiple:(NSInteger)multiple;

@end
