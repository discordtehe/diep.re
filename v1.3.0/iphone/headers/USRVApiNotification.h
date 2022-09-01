// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USRVAPINOTIFICATION_H
#define USRVAPINOTIFICATION_H


#import <Foundation/Foundation.h>


@interface USRVApiNotification : NSObject



+(void)WebViewExposed_addNotificationObserver:(id)arg0 userInfoKeys:(id)arg1 callback:(id)arg2 ;
+(void)WebViewExposed_removeNotificationObserver:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_addAVNotificationObserver:(id)arg0 userInfoKeys:(id)arg1 callback:(id)arg2 ;
+(void)WebViewExposed_removeAVNotificationObserver:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_removeAllNotificationObservers:(id)arg0 ;


@end


#endif