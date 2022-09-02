// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TRAPPSESSIONREQUEST_H
#define TRAPPSESSIONREQUEST_H



@class TRRequest;

@interface TRAppSessionRequest : TRRequest



-(id)init;
-(void)buildPersistedPayload;
-(void)addRealtimeParameters;
-(BOOL)shouldForceRemoveFromQueue;
-(void)handleResponseObject:(id)arg0 ;


@end


#endif