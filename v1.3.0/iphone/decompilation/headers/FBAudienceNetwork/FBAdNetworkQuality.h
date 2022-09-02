// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADNETWORKQUALITY_H
#define FBADNETWORKQUALITY_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>

@protocol FBAdMovingAverage;
@protocol FBAdMovingAverage;

@interface FBAdNetworkQuality : NSObject

@property (retain, nonatomic) NSObject<OS_dispatch_queue> *queue; // ivar: _queue
@property (readonly, nonatomic) NSObject<FBAdMovingAverage> *downloadBandwidthMovingAverage; // ivar: _downloadBandwidthMovingAverage
@property (readonly, nonatomic) NSObject<FBAdMovingAverage> *uploadBandwidthMovingAverage; // ivar: _uploadBandwidthMovingAverage
@property (readonly, nonatomic) CGFloat downloadBandwidthEstimate;
@property (readonly, nonatomic) NSUInteger downloadBandwidthState;
@property (readonly, nonatomic) CGFloat uploadBandwidthEstimate;
@property (readonly, nonatomic) NSUInteger uploadBandwidthState;


-(id)initWithFactory:(id)arg0 ;
-(void)updateUsingTask:(id)arg0 metrics:(id)arg1 ;
-(void)updateUsingCountOfBytesSent:(NSUInteger)arg0 requestDurationInMiliseconds:(NSUInteger)arg1 ;
-(void)updateDownloadBandwidthEstimate:(CGFloat)arg0 ;
-(void)updateUploadBandwidthEstimate:(CGFloat)arg0 ;


@end


#endif