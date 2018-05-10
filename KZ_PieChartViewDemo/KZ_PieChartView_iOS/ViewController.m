//
//  ViewController.m
//  KZ_PieChartView_iOS
//
//  Created by Kieron Zhang on 2018/5/10.
//  Copyright © 2018年 Kieron Zhang. All rights reserved.
//

#import "ViewController.h"
#import <KZ_PieChartView_iOS/KZ_PieChartView.h>

@interface ViewController () <KZ_PieChartViewDelegate> {
    NSMutableArray *array;
    NSMutableArray *colorArray;
    IBOutlet KZ_PieChartView *pieChartView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    array = [[NSMutableArray alloc] initWithCapacity:0];
    for (int i = 0; i < 5; i++) {
        [array addObject:@((int)arc4random() % 100)];
    }
    colorArray = [[NSMutableArray alloc] initWithCapacity:0];
    for (int i = 0; i < 5; i++) {
        [colorArray addObject:[UIColor colorWithRed:((int)arc4random() % 255) green:((int)arc4random() % 255) blue:((int)arc4random() % 255) alpha:1.0f]];
    }
    
    pieChartView = [[KZ_PieChartView alloc] initWithFrame:CGRectMake(50, 50, 300, 300)];
    pieChartView.delegate = self;
    pieChartView.titleStyle = KZ_PieChartViewTitleStype_ShowOnyTapped;
    [self.view addSubview:pieChartView];
}

- (IBAction)tapped:(id)sender {
    [array removeAllObjects];
    for (int i = 0; i < 4; i++) {
        int index = (int)arc4random() % 100;
        while (index < 0) {
            index = (int)arc4random() % 100;
        }
        index = 10;
        [array addObject:@(index)];
    }
    [colorArray removeAllObjects];
    
    [colorArray addObject:@[[UIColor redColor], [UIColor greenColor], [UIColor yellowColor], [UIColor blueColor]]];
    [colorArray addObject:@[[UIColor greenColor], [UIColor yellowColor], [UIColor blueColor], [UIColor redColor]]];
    [colorArray addObject:@[[UIColor yellowColor], [UIColor blueColor], [UIColor redColor], [UIColor greenColor]]];
    [colorArray addObject:@[[UIColor blueColor], [UIColor redColor], [UIColor greenColor], [UIColor yellowColor]]];
    
    [pieChartView reloadData];
}

- (NSInteger)pieChartViewNumberOfPies:(KZ_PieChartView *)chartView {
    return array.count;
}

- (CGFloat)pieChartView:(KZ_PieChartView *)chartView valueOfPieForIndex:(int)index {
    return [array[index] doubleValue];
}

- (UIColor *)pieChartView:(KZ_PieChartView *)chartView colorOfPieForIndex:(int)index layerNumber:(int)layerNumber {
    return colorArray[index][layerNumber];
}

- (NSInteger)pieChartView:(KZ_PieChartView *)chartView layerNumberOfPieForIndex:(int)index {
    return 3;
}

- (NSString *)pieChartView:(KZ_PieChartView *)chartView layerTitleOfPieForIndex:(int)index layerNumber:(int)layerNumber {
    return @"20";
}

- (UIColor *)pieChartView:(KZ_PieChartView *)chartView layerTitleColorOfPieForIndex:(int)index layerNumber:(int)layerNumber {
    return [UIColor blackColor];
}

- (UIFont *)pieChartView:(KZ_PieChartView *)chartView layerTitleFontOfPieForIndex:(int)index layerNumber:(int)layerNumber {
    return [UIFont systemFontOfSize:14.0f];
}

- (CGFloat)pieChartView:(KZ_PieChartView *)chartView radiusRadioOfLayerForIndex:(int)index layerNumber:(int)layerNumber {
    if (layerNumber == 0) {
        return 1.0f;
    }
    else if (layerNumber == 1) {
        return 0.8f;
    }
    else if (layerNumber == 2) {
        return 0.3f;
    }
    return 0.0f;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
