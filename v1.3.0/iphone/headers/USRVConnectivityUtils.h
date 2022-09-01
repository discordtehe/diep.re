// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USRVCONNECTIVITYUTILS_H
#define USRVCONNECTIVITYUTILS_H


#import <Foundation/Foundation.h>


@interface USRVConnectivityUtils : NSObject



+(void)initCarrierInfo;
+(NSInteger)getNetworkType;
+(NSInteger)networkStatusForFlags:(unsigned int)arg0 ;
+(NSInteger)getNetworkStatus;


@end


#endif