// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef BANNERDELEGATETHROTTLER_H
#define BANNERDELEGATETHROTTLER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface BannerDelegateThrottler : NSObject {
    NSDate *_lastInvoked;
    BOOL _isWaitingForInvocation;
}




-(id)init;
-(BOOL)hasPendingInvocation;
-(void)bannerDidFailToLoadWithError:(id)arg0 ;
-(void)invokeDelegate:(id)arg0 ;
+(id)sharedInstance;


@end


#endif