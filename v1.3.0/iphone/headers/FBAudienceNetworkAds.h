// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBAUDIENCENETWORKADS_H
#define FBAUDIENCENETWORKADS_H


#import <Foundation/Foundation.h>


@interface FBAudienceNetworkAds : NSObject



+(void)initialize;
+(void)initializeWithSettings:(id)arg0 completionHandler:(id)arg1 ;
+(NSInteger)adFormatTypeNameForPlacementId:(id)arg0 ;
+(void)performSynchronizationWithCompletion:(id)arg0 ;
+(void)parseSynchronizationResponseData:(id)arg0 withCompletion:(id)arg1 ;
+(id)formatMapper;
+(id)synchronizationRequestPayload;


@end


#endif