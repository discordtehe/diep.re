// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FRREWARDREQUEST_H
#define FRREWARDREQUEST_H


#import <Foundation/Foundation.h>


@interface FRRewardRequest : NSObject

@property (retain) NSString *rewardId; // ivar: _rewardId
@property (retain) NSString *name; // ivar: _name
@property NSUInteger quantity; // ivar: _quantity
@property (retain) NSString *token; // ivar: _token


-(id)initWithDictionary:(id)arg0 ;
+(id)objectWithDictionary:(id)arg0 ;


@end


#endif