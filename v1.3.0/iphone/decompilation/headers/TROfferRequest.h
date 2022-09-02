// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TROFFERREQUEST_H
#define TROFFERREQUEST_H


#import <Foundation/Foundation.h>

@class TRRequest;

@interface TROfferRequest : TRRequest

@property (copy, nonatomic) id *placementBlock; // ivar: _placementBlock
@property (copy) NSString *offerIdentifier; // ivar: _offerIdentifier


-(id)initWithOfferIdentifier:(id)arg0 placementBlock:(id)arg1 ;
-(void)buildPersistedPayload;
-(void)handleResponseObject:(id)arg0 ;


@end


#endif