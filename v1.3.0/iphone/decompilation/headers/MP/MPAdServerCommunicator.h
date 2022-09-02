// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPADSERVERCOMMUNICATOR_H
#define MPADSERVERCOMMUNICATOR_H

@class NSURLSessionTask;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol MPAdServerCommunicatorDelegate;

@interface MPAdServerCommunicator : NSObject

@property (nonatomic) BOOL loading; // ivar: _loading
@property (retain, nonatomic) NSURLSessionTask *task; // ivar: _task
@property (retain, nonatomic) NSDictionary *responseHeaders; // ivar: _responseHeaders
@property (retain, nonatomic) NSArray *topLevelJsonKeys; // ivar: _topLevelJsonKeys
@property (readonly, nonatomic) BOOL isRateLimited;
@property (weak, nonatomic) NSObject<MPAdServerCommunicatorDelegate> *delegate; // ivar: _delegate


-(void)removeAllMoPubCookies;
-(id)handleConsentOverrides:(id)arg0 ;
-(id)initWithDelegate:(id)arg0 ;
-(void)dealloc;
-(void)loadURL:(id)arg0 ;
-(void)cancel;
-(void)sendBeforeLoadUrlWithConfiguration:(id)arg0 ;
-(void)sendAfterLoadUrlWithConfiguration:(id)arg0 adapterLoadDuration:(CGFloat)arg1 adapterLoadResult:(NSUInteger)arg2 ;
-(void)failLoadForSDKInit;
-(void)didFailWithError:(id)arg0 ;
-(void)didFinishLoadingWithData:(id)arg0 ;
-(id)getFlattenJsonResponses:(id)arg0 keys:(id)arg1 ;
-(id)handleAdResponseOverrides:(id)arg0 ;
-(id)errorForStatusCode:(NSInteger)arg0 ;


@end


#endif