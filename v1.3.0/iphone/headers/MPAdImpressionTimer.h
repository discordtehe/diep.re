// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPADIMPRESSIONTIMER_H
#define MPADIMPRESSIONTIMER_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class MPTimer;
@protocol MPAdImpressionTimerDelegate;

@interface MPAdImpressionTimer : NSObject

@property (retain, nonatomic) UIView *adView; // ivar: _adView
@property (retain, nonatomic) MPTimer *viewVisibilityTimer; // ivar: _viewVisibilityTimer
@property (nonatomic) CGFloat firstVisibilityTimestamp; // ivar: _firstVisibilityTimestamp
@property (nonatomic) CGFloat pixelsRequiredForViewVisibility; // ivar: _pixelsRequiredForViewVisibility
@property (nonatomic) CGFloat percentageRequiredForViewVisibility; // ivar: _percentageRequiredForViewVisibility
@property (nonatomic) CGFloat requiredSecondsForImpression; // ivar: _requiredSecondsForImpression
@property (weak, nonatomic) NSObject<MPAdImpressionTimerDelegate> *delegate; // ivar: _delegate


-(id)initWithRequiredSecondsForImpression:(CGFloat)arg0 requiredViewVisibilityPixels:(CGFloat)arg1 ;
-(id)initWithRequiredSecondsForImpression:(CGFloat)arg0 requiredViewVisibilityPercentage:(CGFloat)arg1 ;
-(void)dealloc;
-(void)startTrackingView:(id)arg0 ;
-(void)tick:(id)arg0 ;


@end


#endif