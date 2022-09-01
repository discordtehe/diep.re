// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FABNETWORKRESPONSEHANDLER_H
#define FABNETWORKRESPONSEHANDLER_H


#import <Foundation/Foundation.h>


@interface FABNetworkResponseHandler : NSObject



+(id)headerForResponse:(id)arg0 withKey:(id)arg1 ;
+(CGFloat)retryValueForResponse:(id)arg0 ;
+(id)requestIdForResponse:(id)arg0 ;
+(BOOL)contentTypeForResponse:(id)arg0 matchesRequest:(id)arg1 ;
+(NSInteger)cancelReasonFromURLError:(id)arg0 ;
+(BOOL)retryableURLError:(id)arg0 ;
+(id)errorForCode:(NSInteger)arg0 userInfo:(id)arg1 ;
+(id)errorForResponse:(id)arg0 ofType:(NSInteger)arg1 status:(NSInteger)arg2 ;
+(void)clientResponseType:(id)arg0 handler:(id)arg1 ;
+(void)handleCompletedResponse:(id)arg0 forOriginalRequest:(id)arg1 error:(id)arg2 block:(id)arg3 ;


@end


#endif