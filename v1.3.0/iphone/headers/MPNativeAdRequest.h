// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPNATIVEADREQUEST_H
#define MPNATIVEADREQUEST_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class MPAdServerCommunicator;
@class MPNativeCustomEvent;
@class MPAdConfiguration;
@class MPTimer;
@class MPNativeAdRequestTargeting;
@protocol MPNativeCustomEventDelegate;
@protocol MPAdServerCommunicatorDelegate;
@protocol MPNativeAdRenderer;

@interface MPNativeAdRequest : NSObject <MPNativeCustomEventDelegate, MPAdServerCommunicatorDelegate>



@property (copy, nonatomic) NSString *adUnitIdentifier; // ivar: _adUnitIdentifier
@property (retain, nonatomic) NSArray *rendererConfigurations; // ivar: _rendererConfigurations
@property (retain, nonatomic) NSURL *URL; // ivar: _URL
@property (retain, nonatomic) MPAdServerCommunicator *communicator; // ivar: _communicator
@property (copy, nonatomic) id *completionHandler; // ivar: _completionHandler
@property (retain, nonatomic) MPNativeCustomEvent *nativeCustomEvent; // ivar: _nativeCustomEvent
@property (retain, nonatomic) MPAdConfiguration *adConfiguration; // ivar: _adConfiguration
@property (retain, nonatomic) NSMutableArray *remainingConfigurations; // ivar: _remainingConfigurations
@property (retain, nonatomic) NSObject<MPNativeAdRenderer> *customEventRenderer; // ivar: _customEventRenderer
@property (nonatomic) BOOL loading; // ivar: _loading
@property (retain, nonatomic) MPTimer *timeoutTimer; // ivar: _timeoutTimer
@property (nonatomic) CGFloat adapterLoadStartTimestamp; // ivar: _adapterLoadStartTimestamp
@property (retain, nonatomic) MPNativeAdRequestTargeting *targeting; // ivar: _targeting
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithAdUnitIdentifier:(id)arg0 rendererConfigurations:(id)arg1 ;
-(void)dealloc;
-(void)startWithCompletionHandler:(id)arg0 ;
-(void)startForAdSequence:(NSInteger)arg0 withCompletionHandler:(id)arg1 ;
-(void)assignCompletionHandler:(id)arg0 ;
-(void)loadAdWithURL:(id)arg0 ;
-(void)getAdWithConfiguration:(id)arg0 ;
-(void)failAdRequest;
-(void)completeAdRequestWithAdObject:(id)arg0 error:(id)arg1 ;
-(void)fetchAdWithConfiguration:(id)arg0 ;
-(void)communicatorDidReceiveAdConfigurations:(id)arg0 ;
-(void)communicatorDidFailWithError:(id)arg0 ;
-(NSUInteger)adTypeForAdServerCommunicator:(id)arg0 ;
-(id)adUnitIDForAdServerCommunicator:(id)arg0 ;
-(void)nativeCustomEvent:(id)arg0 didLoadAd:(id)arg1 ;
-(void)nativeCustomEvent:(id)arg0 didFailToLoadAdWithError:(id)arg1 ;
-(void)startTimeoutTimer;
-(void)timeout;
-(void)didStopLoading;
+(id)requestWithAdUnitIdentifier:(id)arg0 rendererConfigurations:(id)arg1 ;


@end


#endif