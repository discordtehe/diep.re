// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPREWARDEDVIDEOCONNECTION_H
#define MPREWARDEDVIDEOCONNECTION_H

@class NSURLSessionTask;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol MPRewardedVideoConnectionDelegate;

@interface MPRewardedVideoConnection : NSObject

@property (retain, nonatomic) NSURLSessionTask *task; // ivar: _task
@property (retain, nonatomic) NSURL *url; // ivar: _url
@property (nonatomic) NSUInteger retryCount; // ivar: _retryCount
@property (nonatomic) CGFloat accumulatedRetryInterval; // ivar: _accumulatedRetryInterval
@property (weak, nonatomic) NSObject<MPRewardedVideoConnectionDelegate> *delegate; // ivar: _delegate


-(id)initWithUrl:(id)arg0 delegate:(id)arg1 ;
-(void)sendRewardedVideoCompletionRequest;
-(void)retryRewardedVideoCompletionRequest;
-(CGFloat)backoffTime:(NSUInteger)arg0 ;


@end


#endif