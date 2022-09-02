// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ANSNETWORKRETRYHANDLER_H
#define ANSNETWORKRETRYHANDLER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class FABCertificatePinner;

@interface ANSNetworkRetryHandler : NSObject

@property (readonly, nonatomic) FABCertificatePinner *certPinner; // ivar: _certPinner
@property (readonly, nonatomic) NSMutableDictionary *retryTimerMap; // ivar: _retryTimerMap


-(id)init;
-(id)sharedFabricSDK;
-(void)handleChallenge:(id)arg0 fromURLSession:(id)arg1 completionHandler:(id)arg2 ;
-(CGFloat)retryValueForResponse:(id)arg0 ;
-(id)errorWithCode:(NSInteger)arg0 forIdentifier:(id)arg1 request:(id)arg2 handlerError:(id)arg3 ;
-(void)handleCompletedRequest:(id)arg0 withResponse:(id)arg1 forIdentifier:(id)arg2 error:(id)arg3 completionHandler:(id)arg4 ;
-(void)handleCompletedRequest:(id)arg0 withResponse:(id)arg1 forIdentifier:(id)arg2 maxRetries:(NSUInteger)arg3 error:(id)arg4 completionHandler:(id)arg5 ;
-(id)timerForIdentifier:(id)arg0 initialRetryValue:(CGFloat)arg1 ;


@end


#endif