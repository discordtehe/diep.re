// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef APMAEU_H
#define APMAEU_H


#import <Foundation/Foundation.h>


@interface APMAEU : NSObject



+(id)appStoreRURL;
+(BOOL)isFAS;
+(BOOL)isASRS;
+(BOOL)isNOD;
+(id)deviceModel;
+(id)systemVersion;
+(BOOL)isOSSupported;
+(BOOL)isAEX;
+(id)sharedApplication;


@end


#endif