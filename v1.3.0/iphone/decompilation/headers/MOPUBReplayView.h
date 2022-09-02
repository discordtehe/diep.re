// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MOPUBREPLAYVIEW_H
#define MOPUBREPLAYVIEW_H


#import <UIKit/UIKit.h>


@interface MOPUBReplayView : UIView

@property (retain, nonatomic) UIView *overlayView; // ivar: _overlayView
@property (retain, nonatomic) UIButton *replayVideoButton; // ivar: _replayVideoButton
@property (copy, nonatomic) id *actionBlock; // ivar: _actionBlock


-(id)initWithFrame:(struct CGRect )arg0 displayMode:(NSUInteger)arg1 ;
-(void)layoutSubviews;
-(void)replayButtonTapped;


@end


#endif