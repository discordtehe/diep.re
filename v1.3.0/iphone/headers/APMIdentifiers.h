// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef APMIDENTIFIERS_H
#define APMIDENTIFIERS_H


#import <Foundation/Foundation.h>


@interface APMIdentifiers : NSObject

@property (readonly, copy, nonatomic) NSString *googleAppID;
@property (readonly, copy, nonatomic) NSString *analyticsAppID;
@property (readonly, copy, nonatomic) NSString *appInstanceID;
@property (readonly, copy, nonatomic) NSString *adEventID;
@property (readonly, copy, nonatomic) NSString *libraryVersion;
@property (readonly, copy, nonatomic) NSString *origin; // ivar: _origin


+(id)sharedInstance;


@end


#endif