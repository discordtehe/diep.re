// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPNATIVEADSOURCEQUEUE_H
#define MPNATIVEADSOURCEQUEUE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class MPNativeAdRequestTargeting;
@protocol MPNativeAdSourceQueueDelegate;

@interface MPNativeAdSourceQueue : NSObject

@property (retain, nonatomic) NSMutableArray *adQueue; // ivar: _adQueue
@property (nonatomic) NSUInteger adFetchRetryCounter; // ivar: _adFetchRetryCounter
@property (nonatomic) NSUInteger currentSequence; // ivar: _currentSequence
@property (copy, nonatomic) NSString *adUnitIdentifier; // ivar: _adUnitIdentifier
@property (retain, nonatomic) MPNativeAdRequestTargeting *targeting; // ivar: _targeting
@property (retain, nonatomic) NSArray *rendererConfigurations; // ivar: _rendererConfigurations
@property (nonatomic) BOOL isAdLoading; // ivar: _isAdLoading
@property (weak, nonatomic) NSObject<MPNativeAdSourceQueueDelegate> *delegate; // ivar: _delegate


-(id)initWithAdUnitIdentifier:(id)arg0 rendererConfigurations:(id)arg1 andTargeting:(id)arg2 ;
-(id)dequeueAd;
-(id)dequeueAdWithMaxAge:(CGFloat)arg0 ;
-(void)addNativeAd:(id)arg0 ;
-(NSUInteger)count;
-(void)cancelRequests;
-(BOOL)isAdAgeValid:(id)arg0 withMaxAge:(CGFloat)arg1 ;
-(void)resetBackoff;
-(void)loadAds;
-(void)replenishCache;


@end


#endif