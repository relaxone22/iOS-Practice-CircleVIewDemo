//
//  CircleView.m
//  CircleViewDemo
//
//  Created by tonyliu on 28/10/2016.
//  Copyright © 2016 mitake. All rights reserved.
//

#import "CircleView.h"

#import "UIView+Draw.h"


@interface CircleView()

@end


@implementation CircleView


- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    
    //只有在这个方法获取的图形上下文才有效
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    //多个圆弧
    [self drawMoreArc:ctx rect:rect radius:50 anglePercent:self.anglePercent lineWidth:3 redValue:100 greenValue:0 blueValue:50 colorValue:0 colorMultiple:10];
    
}

//-(void)setRadius:(NSInteger)radius{
//    
//    _radius = radius;
//    [self setNeedsDisplay];
//}

-(void)setAnglePercent:(double)anglePercent{
    
    _anglePercent = anglePercent;
    [self setNeedsDisplay];
}

@end
