// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADPROVIDER_H
#define FBADPROVIDER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class FBAdProviderResponseParser;
@class FBAdProviderResponse;
@class FBAdEnvironmentData;
@protocol FBAdProviderDelegate;

@interface FBAdProvider : NSObject

@property (nonatomic) BOOL active; // ivar: _active
@property (retain, nonatomic) FBAdProviderResponseParser *adParser; // ivar: _adParser
@property (retain, nonatomic) FBAdProviderResponse *adResponse; // ivar: _adResponse
@property (retain, nonatomic) FBAdEnvironmentData *environmentData; // ivar: _environmentData
@property (retain, nonatomic) NSOperationQueue *parsingQueue; // ivar: _parsingQueue
@property (retain, nonatomic) NSMutableArray *requests; // ivar: _requests
@property (nonatomic) CGFloat requestTime; // ivar: _requestTime
@property (weak, nonatomic) NSObject<FBAdProviderDelegate> *delegate; // ivar: _delegate


-(id)init;
-(void)loadAdWithEnvironmentData:(id)arg0 ;
-(void)cancel;
-(void)destroy;
-(void)dispatchError:(id)arg0 ;
-(void)makeAdRequestWithParameters:(id)arg0 ;
-(BOOL)maybeHandleBidPayload:(id)arg0 ;
-(void)handleAdResponse:(id)arg0 data:(id)arg1 error:(id)arg2 canReturnSources:(BOOL)arg3 deliveryUrl:(id)arg4 ;
-(void)parseResponseFromData:(id)arg0 canReturnSources:(BOOL)arg1 ;
-(void)funnelLogAdResponse:(id)arg0 ;


@end


#endif