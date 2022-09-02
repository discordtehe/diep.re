// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADBACKGROUNDSTATEMANAGERFACTORY_H
#define FBADBACKGROUNDSTATEMANAGERFACTORY_H


#import <Foundation/Foundation.h>


@interface FBAdBackgroundStateManagerFactory : NSObject



+(void)setBackgroundStateManagerProviderBlock:(id)arg0 ;
+(void)resetBackgroundStateManagerProviderBlock;
+(id)backgroundStateManager;


@end


#endif