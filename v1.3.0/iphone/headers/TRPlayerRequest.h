// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TRPLAYERREQUEST_H
#define TRPLAYERREQUEST_H



@class TRRequest;

@interface TRPlayerRequest : TRRequest

@property (nonatomic) BOOL isNewSession; // ivar: _isNewSession


-(id)initWithNewSession:(BOOL)arg0 ;
-(void)buildPersistedPayload;
-(void)addRealtimeParameters;
-(void)handleResponseObject:(id)arg0 ;


@end


#endif