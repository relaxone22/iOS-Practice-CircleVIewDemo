//
//  ViewController.m
//  CircleViewDemo
//
//  Created by tonyliu on 28/10/2016.
//  Copyright © 2016 mitake. All rights reserved.
//

#import "ViewController.h"

#import "CircleView.h"


NSInteger const kTotalTime = 2;


@interface ViewController ()
@property (weak, nonatomic) IBOutlet CircleView *circleView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeSlider:(id)sender {
    
    UISlider *slider = (UISlider *)sender;
    
    // circleView 的属性，弧度比例，kTotalTime = 2,表示两圈
    self.circleView.anglePercent = (slider.value/kTotalTime * 8);
    NSLog(@"value--%f,anglePercent--%f",slider.value,self.circleView.anglePercent);
}

@end
