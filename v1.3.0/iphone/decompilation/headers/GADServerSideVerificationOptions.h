// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADSERVERSIDEVERIFICATIONOPTIONS_H
#define GADSERVERSIDEVERIFICATIONOPTIONS_H


#import <Foundation/Foundation.h>

@protocol NSCopying;

@interface GADServerSideVerificationOptions : NSObject <NSCopying>



@property (copy, nonatomic) NSString *userIdentifier; // ivar: _userIdentifier
@property (copy, nonatomic) NSString *customRewardString; // ivar: _customRewardString


-(id)copyWithZone:(struct _NSZone *)arg0 ;


@end


#endif