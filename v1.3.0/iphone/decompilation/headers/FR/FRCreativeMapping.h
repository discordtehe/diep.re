// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FRCREATIVEMAPPING_H
#define FRCREATIVEMAPPING_H


#import <Foundation/Foundation.h>

@class FRPurchaseRequest;
@class FRRewardRequest;

@interface FRCreativeMapping : NSObject

@property CGRect rect; // ivar: _rect
@property (retain) NSString *link; // ivar: _link
@property (retain) NSString *redirectURL; // ivar: _redirectURL
@property (retain) NSString *adContent; // ivar: _adContent
@property (retain) NSString *name; // ivar: _name
@property BOOL bDismiss; // ivar: _bDismiss
@property (retain) FRPurchaseRequest *purchaseRequest; // ivar: _purchaseRequest
@property (retain) FRRewardRequest *rewardRequest; // ivar: _rewardRequest


-(id)initWithDictionary:(id)arg0 ;
+(id)objectWithDictionary:(id)arg0 ;


@end


#endif