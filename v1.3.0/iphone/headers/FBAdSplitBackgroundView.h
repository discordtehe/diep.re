// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADSPLITBACKGROUNDVIEW_H
#define FBADSPLITBACKGROUNDVIEW_H


#import <UIKit/UIKit.h>


@interface FBAdSplitBackgroundView : UIView

@property (retain, nonatomic) UIView *leftView; // ivar: _leftView
@property (retain, nonatomic) UIView *rightView; // ivar: _rightView
@property (nonatomic) CGFloat leftPercentage; // ivar: _leftPercentage


-(id)initWithLeftColor:(id)arg0 rightColor:(id)arg1 leftPercentage:(CGFloat)arg2 ;
-(void)layoutSubviews;
-(id)createAndAddNewViewWithBackgroundColor:(id)arg0 ;


@end


#endif