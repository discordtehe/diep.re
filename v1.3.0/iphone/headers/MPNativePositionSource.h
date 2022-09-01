// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPNATIVEPOSITIONSOURCE_H
#define MPNATIVEPOSITIONSOURCE_H

@class NSURLSessionTask;

#import <Foundation/Foundation.h>


@interface MPNativePositionSource : NSObject

@property (nonatomic) BOOL loading; // ivar: _loading
@property (copy, nonatomic) NSString *adUnitIdentifier; // ivar: _adUnitIdentifier
@property (retain, nonatomic) NSURLSessionTask *task; // ivar: _task
@property (copy, nonatomic) id *completionHandler; // ivar: _completionHandler
@property (nonatomic) CGFloat maximumRetryInterval; // ivar: _maximumRetryInterval
@property (nonatomic) CGFloat minimumRetryInterval; // ivar: _minimumRetryInterval
@property (nonatomic) CGFloat retryInterval; // ivar: _retryInterval
@property (nonatomic) NSUInteger retryCount; // ivar: _retryCount


-(id)init;
-(void)dealloc;
-(void)loadPositionsWithAdUnitIdentifier:(id)arg0 completionHandler:(id)arg1 ;
-(void)cancel;
-(id)httpTaskWithRequest:(id)arg0 ;
-(void)retryLoadingPositions;
-(void)parsePositioningData:(id)arg0 ;


@end


#endif