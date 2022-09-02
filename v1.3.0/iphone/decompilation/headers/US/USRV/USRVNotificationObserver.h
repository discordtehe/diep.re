// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USRVNOTIFICATIONOBSERVER_H
#define USRVNOTIFICATIONOBSERVER_H


#import <Foundation/Foundation.h>


@interface USRVNotificationObserver : NSObject



+(void)addObserver:(id)arg0 userInfoKeys:(id)arg1 targetObject:(id)arg2 ;
+(void)removeObserver:(id)arg0 targetObject:(id)arg1 ;
+(void)unregisterNotificationObserver;
+(void)nsNotificationReceived:(id)arg0 ;


@end


#endif