// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef UNITYSERVICES_H
#define UNITYSERVICES_H


#import <Foundation/Foundation.h>


@interface UnityServices : NSObject



+(void)initialize:(id)arg0 delegate:(id)arg1 ;
+(void)initialize:(id)arg0 delegate:(id)arg1 testMode:(BOOL)arg2 ;
+(BOOL)getDebugMode;
+(void)setDebugMode:(BOOL)arg0 ;
+(BOOL)isSupported;
+(id)getVersion;
+(BOOL)isInitialized;


@end


#endif