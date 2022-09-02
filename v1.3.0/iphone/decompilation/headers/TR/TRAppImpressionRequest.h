// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TRAPPIMPRESSIONREQUEST_H
#define TRAPPIMPRESSIONREQUEST_H



@class TRRequest;
@class TROffer;

@interface TRAppImpressionRequest : TRRequest

@property (retain, nonatomic) TROffer *offer; // ivar: _offer


-(id)initWithOffer:(id)arg0 ;
-(void)buildPersistedPayload;
-(void)addRealtimeParameters;
-(void)handleResponseObject:(id)arg0 ;


@end


#endif