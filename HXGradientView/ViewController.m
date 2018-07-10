//
//  ViewController.m
//  HXGradientView
//
//  Created by TAL on 2018/7/10.
//  Copyright © 2018年 TAL. All rights reserved.
//

#import "ViewController.h"
#import "HXGradientView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    HXGradientLabel * label1 = [[HXGradientLabel alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    label1.text = @"6666";
    label1.textColors = @[[UIColor blueColor], [UIColor whiteColor]];
//    label1.backgroundColors = @[[UIColor redColor], [UIColor yellowColor]];
//    label1.drawDirection = HXGradientColorDirectionTopToBottom;
    [self.view addSubview:label1];
    
//    HXGradientLabel * label2 = [[HXGradientLabel alloc] initWithFrame:CGRectMake(220, 100, 100, 100)];
//    label2.text = @"6666";
//    label2.colors = @[[UIColor redColor], [UIColor yellowColor]];
//    label2.drawDirection = HXGradientColorDirectionBottomToTop;
//    [self.view addSubview:label2];
//
//    HXGradientLabel * label3 = [[HXGradientLabel alloc] initWithFrame:CGRectMake(100, 230, 100, 100)];
//    label3.text = @"6666";
//    label3.colors = @[[UIColor redColor], [UIColor yellowColor]];
//    label3.drawDirection = HXGradientColorDirectionLeftToRight;
//    [self.view addSubview:label3];
//
//    HXGradientLabel * label4 = [[HXGradientLabel alloc] initWithFrame:CGRectMake(220, 230, 100, 100)];
//    label4.text = @"6666";
//    label4.colors = @[[UIColor redColor], [UIColor yellowColor]];
//    label4.drawDirection = HXGradientColorDirectionRightToLeft;
//    [self.view addSubview:label4];
//
//    HXGradientLabel * label5 = [[HXGradientLabel alloc] initWithFrame:CGRectMake(100, 360, 100, 100)];
//    label5.text = @"6666";
//    label5.colors = @[[UIColor redColor], [UIColor yellowColor]];
//    label5.drawDirection = HXGradientColorDirectionCenterToAround;
//    [self.view addSubview:label5];
    
//    HXGradientButton * button = [HXGradientButton buttonWithType:UIButtonTypeCustom];
//    button.frame = CGRectMake(100, 250, 100, 100);
//    [button setTitle:@"9999" forState:UIControlStateNormal];
//    button.colors = @[[UIColor redColor], [UIColor yellowColor]];
//    button.drawDirection = HXGradientColorDirectionRightToLeft;
//    [self.view addSubview:button];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
