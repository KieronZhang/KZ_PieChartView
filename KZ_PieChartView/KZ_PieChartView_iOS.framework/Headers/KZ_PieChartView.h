//
//  KZ_PieChartView.h
//  KZ_PieChartView
//
//  Created by Kieron Zhang on 2017/3/11.
//  Copyright © 2017年 Kieron Zhang. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, KZ_PieChartViewTitleStype) {
    KZ_PieChartViewTitleStype_AlwaysShow,
    KZ_PieChartViewTitleStype_ShowOnyTapped,
    KZ_PieChartViewTitleStype_NotShow
};

@class KZ_PieChartView;

@protocol KZ_PieChartViewDelegate <NSObject>

- (NSInteger)pieChartViewNumberOfPies:(KZ_PieChartView *)chartView;
- (CGFloat)pieChartView:(KZ_PieChartView *)chartView valueOfPieForIndex:(int)index;
- (UIColor *)pieChartView:(KZ_PieChartView *)chartView colorOfPieForIndex:(int)index layerNumber:(int)layerNumber;

@optional
- (NSInteger)pieChartView:(KZ_PieChartView *)chartView layerNumberOfPieForIndex:(int)index;
- (NSString *)pieChartView:(KZ_PieChartView *)chartView layerTitleOfPieForIndex:(int)index layerNumber:(int)layerNumber;
- (UIColor *)pieChartView:(KZ_PieChartView *)chartView layerTitleColorOfPieForIndex:(int)index layerNumber:(int)layerNumber;
- (UIFont *)pieChartView:(KZ_PieChartView *)chartView layerTitleFontOfPieForIndex:(int)index layerNumber:(int)layerNumber;
- (CGFloat)pieChartView:(KZ_PieChartView *)chartView radiusRadioOfLayerForIndex:(int)index layerNumber:(int)layerNumber;

- (void)pieChartView:(KZ_PieChartView *)pieChart willSelectSliceAtIndex:(NSUInteger)index;
- (void)pieChartView:(KZ_PieChartView *)pieChart didSelectSliceAtIndex:(NSUInteger)index;
- (void)pieChartView:(KZ_PieChartView *)pieChart willDeselectSliceAtIndex:(NSUInteger)index;
- (void)pieChartView:(KZ_PieChartView *)pieChart didDeselectSliceAtIndex:(NSUInteger)index;

@end

@interface KZ_PieChartView : UIView

@property (nonatomic, weak) id<KZ_PieChartViewDelegate> delegate;
@property (nonatomic, assign) KZ_PieChartViewTitleStype titleStyle;
@property (nonatomic, assign) BOOL shouldTouch;
@property (nonatomic, assign) float touchDistance;

- (void)reloadData;

@end
