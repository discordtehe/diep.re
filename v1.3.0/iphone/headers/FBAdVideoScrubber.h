// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADVIDEOSCRUBBER_H
#define FBADVIDEOSCRUBBER_H


#import <UIKit/UIKit.h>


@interface FBAdVideoScrubber : UISlider {
    UIView *_trackView;
    UIView *_trackMinView;
    UIView *_trackLoadingView;
    UIView *_trackMaxView;
    CGFloat _currentScrubberHeight;
    CGFloat _currentInset;
}


@property (nonatomic) CGFloat playableDuration; // ivar: _playableDuration
@property (nonatomic) CGFloat trackInsetWhileScrubbing; // ivar: _trackInsetWhileScrubbing
@property (nonatomic) CGFloat hitAreaBelowScrubber; // ivar: _hitAreaBelowScrubber


-(id)initWithFrame:(struct CGRect )arg0 ;
-(void)layoutSubviews;
-(void)_updateTrackLoadingViewFrame;
-(id)_imageWithColor:(id)arg0 andSize:(struct CGRect )arg1 ;
-(id)_imageWithColor:(id)arg0 ;
-(void)_scrubberIsBeingUsed:(id)arg0 ;
-(void)_scrubberIsNotBeingUsed:(id)arg0 ;
-(BOOL)beginTrackingWithTouch:(id)arg0 withEvent:(id)arg1 ;
+(void)initialize;


@end


#endif