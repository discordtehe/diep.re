// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef IROMOATGMAINTERSTITIALTRACKER_H
#define IROMOATGMAINTERSTITIALTRACKER_H


#import <Foundation/Foundation.h>


@interface IROMoatGMAInterstitialTracker : NSObject



+(void)startTracking;
+(void)findWebviewAndCreateTracker;
+(void)stopTracking;
+(id)getWebView;


@end


#endif