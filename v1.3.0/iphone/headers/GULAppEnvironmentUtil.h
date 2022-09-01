// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GULAPPENVIRONMENTUTIL_H
#define GULAPPENVIRONMENTUTIL_H


#import <Foundation/Foundation.h>


@interface GULAppEnvironmentUtil : NSObject



+(BOOL)isFromAppStore;
+(BOOL)isAppStoreReceiptSandbox;
+(BOOL)isSimulator;
+(id)deviceModel;
+(id)systemVersion;
+(BOOL)isAppExtension;


@end


#endif