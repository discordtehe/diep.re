// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEPLAYABILITYCOORDINATOR_H
#define VUNGLEPLAYABILITYCOORDINATOR_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol VungleSDKDelegate;

@interface VunglePlayabilityCoordinator : NSObject

@property (copy) id *playableEventTimer; // ivar: _playableEventTimer
@property BOOL isPlayable; // ivar: _isPlayable
@property CGFloat preventPlayUntilTime; // ivar: _preventPlayUntilTime
@property (retain, nonatomic) NSMutableArray *feedBasedArray; // ivar: _feedBasedArray
@property (weak, nonatomic) NSObject<VungleSDKDelegate> *sdkDelegate; // ivar: _sdkDelegate


-(id)init;
-(BOOL)isAdPlayable;
-(void)fireAdPlayable:(BOOL)arg0 placement:(id)arg1 ;
-(void)delayNextPlay:(NSInteger)arg0 ;
-(CGFloat)delayInSeconds;
-(id)placementArrayWithPlayableState:(NSUInteger)arg0 ;
-(id)readyPlacementForFeedBasedAdWithPlacementID:(id)arg0 ;
-(NSUInteger)adPlaybackStateForPlacement:(id)arg0 adCacheKey:(id)arg1 ;
-(void)updateAdPlayableState:(NSUInteger)arg0 feedBasedPlacement:(id)arg1 adCacheKey:(id)arg2 ;
-(BOOL)placementAdUnitIsFeedbased:(id)arg0 ;
-(BOOL)supportedAdTemplateTypeForStreaming:(id)arg0 ;


@end


#endif