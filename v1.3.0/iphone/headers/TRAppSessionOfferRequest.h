// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TRAPPSESSIONOFFERREQUEST_H
#define TRAPPSESSIONOFFERREQUEST_H



@class TRRequest;

@interface TRAppSessionOfferRequest : TRRequest



-(id)init;
-(void)buildPersistedPayload;
-(void)addRealtimeParameters;
-(BOOL)shouldForceRemoveFromQueue;
-(void)addAppSessionID;


@end


#endif