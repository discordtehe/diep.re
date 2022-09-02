// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPBASEBANNERADAPTER_H
#define MPBASEBANNERADAPTER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class MPAdConfiguration;
@class MPTimer;
@protocol MPBannerAdapterDelegate;

@interface MPBaseBannerAdapter : NSObject

@property (retain, nonatomic) MPAdConfiguration *configuration; // ivar: _configuration
@property (retain, nonatomic) MPTimer *timeoutTimer; // ivar: _timeoutTimer
@property (weak, nonatomic) NSObject<MPBannerAdapterDelegate> *delegate; // ivar: _delegate
@property (copy, nonatomic) NSURL *impressionTrackingURL; // ivar: _impressionTrackingURL
@property (copy, nonatomic) NSURL *clickTrackingURL; // ivar: _clickTrackingURL


-(id)initWithDelegate:(id)arg0 ;
-(void)dealloc;
-(void)unregisterDelegate;
-(void)getAdWithConfiguration:(id)arg0 targeting:(id)arg1 containerSize:(struct CGSize )arg2 ;
-(void)_getAdWithConfiguration:(id)arg0 targeting:(id)arg1 containerSize:(struct CGSize )arg2 ;
-(void)didStopLoading;
-(void)didDisplayAd;
-(void)startTimeoutTimer;
-(void)timeout;
-(void)rotateToOrientation:(NSInteger)arg0 ;
-(void)trackImpression;
-(void)trackClick;


@end


#endif