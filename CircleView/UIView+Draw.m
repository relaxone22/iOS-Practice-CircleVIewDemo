//
//  UIView+Draw.m
//  CircleViewDemo
//
//  Created by tonyliu on 28/10/2016.
//  Copyright © 2016 mitake. All rights reserved.
//

#import "UIView+Draw.h"

static double const kFirstRound = 1;

static double const kSecondRound = 200;

@implementation UIView (Draw)

/**
 *  画多重圆弧
 *
 *  @param ctx          上下文
 *  @param r            半径
 *  @param anglePercent 角度
 *  @param red          红色值
 *  @param green        绿色值
 *  @param blue         蓝色值
 *  @param colorValue   颜色过渡值
 *  @param multiple     颜色过渡倍数
 */
-(void)drawMoreArc:(CGContextRef)ctx rect:(CGRect)rect radius:(NSInteger)r anglePercent:(double)anglePercent lineWidth:(float)width redValue:(double)red greenValue:(double)green blueValue:(double)blue colorValue:(double)colorValue colorMultiple:(NSInteger)multiple{
    //1.第一个圆
    CGContextAddArc(ctx, rect.size.width/2, rect.size.height/2, r, -M_PI_2, -M_PI_2+anglePercent*M_PI*2, 0);
    
    CGContextSetLineWidth(ctx, width);
    CGContextSetLineCap(ctx, kCGLineCapRound);
    // 设置颜色
    CGContextSetRGBStrokeColor(ctx, red/255.0, green/255.0, blue/255.0, 0.5);
    // 渲染一次
    CGContextStrokePath(ctx);
    
    //2.弧度比大于1，第二个圆
    if (anglePercent>=1) {
        
        CGContextAddArc(ctx, rect.size.width/2, rect.size.height/2, r, -M_PI_2,  -M_PI_2+(anglePercent-1)*M_PI*2, 0);
        
        CGContextSetLineWidth(ctx, width+2);
        CGContextSetLineCap(ctx, kCGLineCapRound);
        
        // 设置画笔颜色
        if(colorValue>=kFirstRound&&colorValue<kSecondRound) {
            CGContextSetRGBStrokeColor(ctx, red, (green-(colorValue-kFirstRound)*multiple)/255.0, blue/255.0, 1);
        }else{
            CGContextSetRGBStrokeColor(ctx, red, (green-12*multiple)/255.0, blue/255.0, 1);
        }
        
    }
    
    // 3.显示所绘制的东西
    CGContextStrokePath(ctx);
}

@end
