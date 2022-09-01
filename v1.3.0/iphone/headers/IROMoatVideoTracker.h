// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef IROMOATVIDEOTRACKER_H
#define IROMOATVIDEOTRACKER_H


#import <Foundation/Foundation.h>

@class IROMoatBaseTracker;
@class IROMoatBaseVideoTracker;

@interface IROMoatVideoTracker : IROMoatBaseTracker

@property (retain, nonatomic) IROMoatBaseVideoTracker *managedTracker; // ivar: _managedTracker
@property (retain, nonatomic) NSString *partnerCode; // ivar: _partnerCode


-(void)dealloc;
-(id)initWithPartnerCode:(id)arg0 ;
-(void)stopTracking;
-(BOOL)trackVideoAd:(id)arg0 usingMPMoviePlayer:(id)arg1 ;
-(BOOL)trackVideoAd:(id)arg0 usingAVMoviePlayer:(id)arg1 withLayer:(id)arg2 withContainingView:(id)arg3 ;
-(void)changeTargetLayer:(id)arg0 withContainingView:(id)arg1 ;
+(id)trackerWithPartnerCode:(id)arg0 ;


@end


#endif