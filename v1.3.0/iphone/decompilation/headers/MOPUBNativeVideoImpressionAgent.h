// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MOPUBNATIVEVIDEOIMPRESSIONAGENT_H
#define MOPUBNATIVEVIDEOIMPRESSIONAGENT_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface MOPUBNativeVideoImpressionAgent : NSObject

@property (nonatomic) CGFloat requiredVisiblePercentage; // ivar: _requiredVisiblePercentage
@property (nonatomic) CGFloat requiredPlaybackDuration; // ivar: _requiredPlaybackDuration
@property (nonatomic) CGFloat visibilitySatisfiedPlaybackTime; // ivar: _visibilitySatisfiedPlaybackTime
@property (weak, nonatomic) UIView *measuredVideoView; // ivar: _measuredVideoView
@property (nonatomic) BOOL requirementsSatisfied; // ivar: _requirementsSatisfied


-(id)initWithVideoView:(id)arg0 requiredVisibilityPercentage:(CGFloat)arg1 requiredPlaybackDuration:(CGFloat)arg2 ;
-(BOOL)shouldTrackImpressionWithCurrentPlaybackTime:(CGFloat)arg0 ;


@end


#endif