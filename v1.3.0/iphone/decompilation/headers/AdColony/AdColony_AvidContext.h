// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCOLONY_AVIDCONTEXT_H
#define ADCOLONY_AVIDCONTEXT_H


#import <Foundation/Foundation.h>


@interface AdColony_AvidContext : NSObject

@property (readonly, nonatomic) NSString *bundleId;
@property (readonly, nonatomic) NSString *avidVersion;
@property (readonly, nonatomic) NSString *avidReleaseDate;
@property (readonly, nonatomic) NSString *partnerName;


+(id)sharedContext;


@end


#endif