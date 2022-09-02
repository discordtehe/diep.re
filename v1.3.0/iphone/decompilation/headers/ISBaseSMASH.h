// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISBASESMASH_H
#define ISBASESMASH_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class ISBaseAdapter;
@class ISAdapterConfig;
@protocol ISAdapterLoggerProtocol;

@interface ISBaseSMASH : NSObject {
    NSInteger _showPerCapSessionCounter;
    NSInteger _showPerIterationCounter;
}


@property (retain, nonatomic) NSTimer *timer; // ivar: _timer
@property (retain, nonatomic) NSTimer *timerForInit; // ivar: _timerForInit
@property (retain, nonatomic) NSObject<ISAdapterLoggerProtocol> *logger; // ivar: _logger
@property (retain, nonatomic) NSOperationQueue *delegateQueue; // ivar: _delegateQueue
@property (retain, nonatomic) NSBlockOperation *initiatedStatusReportOperation; // ivar: _initiatedStatusReportOperation
@property (nonatomic) NSInteger mediationState; // ivar: _mediationState
@property (nonatomic) int providerPriority; // ivar: _providerPriority
@property (nonatomic) BOOL consent; // ivar: _consent
@property (nonatomic) BOOL didSetConsent; // ivar: _didSetConsent
@property (readonly, nonatomic) ISBaseAdapter *adapter; // ivar: _adapter
@property (readonly, nonatomic) ISAdapterConfig *adapterConfig; // ivar: _adapterConfig
@property (readonly, nonatomic) NSString *adapterVersion;
@property (readonly, nonatomic) NSString *sdkVersion;
@property (readonly, nonatomic) NSString *instanceId;


-(id)initWithAdapterConfig:(id)arg0 ;
-(BOOL)isMediationAvailable;
-(void)preShow;
-(void)completeIteration;
-(BOOL)isExhausted;
-(BOOL)isCappedPerSession;
-(BOOL)hasAvailableAds;
-(void)startLoadTimerForSelector:(SEL)arg0 ;
-(void)startInitTimerForSelector:(SEL)arg0 ;
-(void)stopTimer;
-(void)stopInitTimer;
-(BOOL)isEqual:(id)arg0 ;
-(id)adUnitString;


@end


#endif