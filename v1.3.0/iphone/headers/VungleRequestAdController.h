// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEREQUESTADCONTROLLER_H
#define VUNGLEREQUESTADCONTROLLER_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>

@class VungleAd;
@protocol VungleRequestAdManagerDelegate;

@interface VungleRequestAdController : NSObject

@property (retain, nonatomic) VungleAd *bundle; // ivar: _bundle
@property (weak, nonatomic) NSObject<VungleRequestAdManagerDelegate> *delegate; // ivar: _delegate
@property (retain, nonatomic) NSObject<OS_dispatch_queue> *delegateQueue; // ivar: _delegateQueue
@property (nonatomic, getter=isHeaderBiddingEnabled) BOOL headerBiddingEnabled; // ivar: _headerBiddingEnabled


-(id)initWithBaseURL:(id)arg0 delegate:(id)arg1 ;
-(id)initWithDelegate:(id)arg0 delegateQueue:(id)arg1 ;
-(void)requestAdWithPlacement:(id)arg0 ;
-(id)requestAdOperationWithPlacement:(id)arg0 ;
-(void)adsOperationCompletionBlockWithPlacement:(id)arg0 networkResponse:(id)arg1 error:(id)arg2 ;
-(BOOL)isBundleExpired:(id)arg0 referenceDate:(id)arg1 ;
-(void)setPreferenceValue:(id)arg0 forKey:(id)arg1 ;
-(id)getPreferenceValueForKey:(id)arg0 ;
-(void)resetInterstitialMRAIDAd:(id)arg0 ;
-(BOOL)isResponseSuccessful:(id)arg0 error:(*id)arg1 ;
-(BOOL)placement:(id)arg0 shouldSleep:(id)arg1 ;
-(id)adUnitWithValidResponse:(id)arg0 error:(*id)arg1 ;
-(BOOL)validateRequestAd:(id)arg0 withError:(*id)arg1 ;
+(id)serialQueue;


@end


#endif