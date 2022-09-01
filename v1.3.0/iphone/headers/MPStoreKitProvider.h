// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPSTOREKITPROVIDER_H
#define MPSTOREKITPROVIDER_H


#import <Foundation/Foundation.h>


@interface MPStoreKitProvider : NSObject



+(BOOL)deviceHasStoreKit;
+(id)buildController;


@end


#endif