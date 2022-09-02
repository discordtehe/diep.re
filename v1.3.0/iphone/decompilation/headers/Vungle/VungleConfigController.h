// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLECONFIGCONTROLLER_H
#define VUNGLECONFIGCONTROLLER_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class VunglePlacementsCoordinator;
@class VungleBackoffCalculator;
@class VunglePublisherInformationProvider;
@protocol VungleStreamingConfigurableDelegate;

@interface VungleConfigController : NSObject

@property (copy, nonatomic) NSURL *URL; // ivar: _URL
@property (nonatomic) unsigned char streamingFlags; // ivar: _streamingFlags
@property (nonatomic) CGFloat streamingRequestTimeout; // ivar: _streamingRequestTimeout
@property (nonatomic) CGFloat streamingBufferTimeout; // ivar: _streamingBufferTimeout
@property (weak, nonatomic) VunglePlacementsCoordinator *placementsCoordinator; // ivar: _placementsCoordinator
@property (retain, nonatomic) VungleBackoffCalculator *backoffCalculator; // ivar: _backoffCalculator
@property (retain, nonatomic) NSObject<OS_dispatch_queue> *configQueue; // ivar: _configQueue
@property BOOL configRequestScheduled; // ivar: _configRequestScheduled
@property (retain, nonatomic) NSDictionary *viewabilityStatusDictionary; // ivar: _viewabilityStatusDictionary
@property (nonatomic) BOOL reportIncentivizedEnabled; // ivar: _reportIncentivizedEnabled
@property (weak, nonatomic) NSObject<VungleStreamingConfigurableDelegate> *delegate; // ivar: _delegate
@property (retain, nonatomic) VunglePublisherInformationProvider *publisherInformation; // ivar: _publisherInformation
@property (nonatomic, getter=isRetryEnabled) BOOL retryEnabled; // ivar: _retryEnabled


-(id)initWithPlacementsCoordinator:(id)arg0 delegate:(id)arg1 ;
-(void)setupSerialQueue;
-(BOOL)shouldRequestStreamingAd;
-(void)handleConfigDownload:(id)arg0 backgroundInit:(BOOL)arg1 completionBlock:(id)arg2 ;
-(BOOL)isViewabilityTypeEnabled:(NSInteger)arg0 ;
-(BOOL)isReportIncentivizedEnabled;
-(void)parseValidConfigurationResponse:(id)arg0 ;
-(BOOL)isValidConfigResponse:(id)arg0 ;
-(void)requestNextConfigWithDelaySeconds:(NSUInteger)arg0 backgroundInit:(BOOL)arg1 ;
-(id)newConfigRequestOperationFromBackgroundInit:(BOOL)arg0 complete:(id)arg1 ;
-(void)fetchConfigWithBackgroundInit:(BOOL)arg0 completionBlock:(id)arg1 ;
+(CGFloat)parseBufferTimeout:(id)arg0 ;
+(CGFloat)parseStreamingRequestTimeout:(id)arg0 ;
+(unsigned char)parseStreamingFlags:(id)arg0 ;
+(id)parseVDUID:(id)arg0 ;


@end


#endif