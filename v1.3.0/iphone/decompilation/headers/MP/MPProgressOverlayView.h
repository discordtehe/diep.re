// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPPROGRESSOVERLAYVIEW_H
#define MPPROGRESSOVERLAYVIEW_H


#import <UIKit/UIKit.h>

@protocol MPProgressOverlayViewDelegate;

@interface MPProgressOverlayView : UIView

@property (retain, nonatomic) UIActivityIndicatorView *activityIndicator; // ivar: _activityIndicator
@property (retain, nonatomic) UIButton *closeButton; // ivar: _closeButton
@property (retain, nonatomic) UIView *progressContainer; // ivar: _progressContainer
@property (weak, nonatomic) NSObject<MPProgressOverlayViewDelegate> *delegate; // ivar: _delegate


-(id)initWithDelegate:(id)arg0 ;
-(id)initWithFrame:(struct CGRect )arg0 ;
-(void)dealloc;
-(void)layoutSubviews;
-(void)show;
-(void)hide;
-(void)deviceOrientationDidChange:(id)arg0 ;
-(void)enableCloseButton;


@end


#endif