// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADMOBKIT_H
#define ADMOBKIT_H


#import <Foundation/Foundation.h>

@protocol FABKit;

@interface AdMobKit : NSObject <FABKit>



@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


+(id)sharedInstance;
+(id)bundleIdentifier;
+(id)kitDisplayVersion;


@end


#endif