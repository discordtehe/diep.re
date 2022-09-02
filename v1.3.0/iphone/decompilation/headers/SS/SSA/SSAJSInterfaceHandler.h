// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef SSAJSINTERFACEHANDLER_H
#define SSAJSINTERFACEHANDLER_H


#import <Foundation/Foundation.h>

@class ISHTTPRequestsDispatcher;
@class SupersonicAdsPublisher;

@interface SSAJSInterfaceHandler : NSObject

@property (retain, nonatomic) ISHTTPRequestsDispatcher *requestsDispatcher; // ivar: _requestsDispatcher
@property (readonly, weak, nonatomic) SupersonicAdsPublisher *publisherAgent; // ivar: _publisherAgent


-(id)initWithPublisherAgent:(id)arg0 ;
-(void)adClicked:(id)arg0 ;
-(void)sendHTTPRequest:(id)arg0 ;
-(void)handleAdEventNotification:(id)arg0 ;
-(id)serializeData:(id)arg0 ;
-(id)convertToString:(NSInteger)arg0 ;
-(void)sendErrorCallbackWithReason:(id)arg0 callback:(id)arg1 requestIdentifier:(id)arg2 ;
-(void)sendSuccessCallbackWithParams:(id)arg0 callback:(id)arg1 ;
-(id)requestFromControllerParams:(id)arg0 ;
-(id)responseDictionaryFromSerializedResponse:(id)arg0 serializedData:(id)arg1 requestIdentifier:(id)arg2 ;
-(void)getControllerConfig:(id)arg0 withConfiguration:(id)arg1 ;
+(BOOL)isUserGroupValid:(id)arg0 ;
+(id)addUserGroupToConfig:(id)arg0 userGroup:(id)arg1 ;


@end


#endif