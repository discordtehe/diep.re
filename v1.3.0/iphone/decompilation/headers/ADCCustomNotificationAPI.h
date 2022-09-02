// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCCUSTOMNOTIFICATIONAPI_H
#define ADCCUSTOMNOTIFICATIONAPI_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface ADCCustomNotificationAPI : NSObject {
    NSMutableDictionary *_customNotificationHandlers;
    NSMutableDictionary *_replyHandlers;
    NSUInteger _nextReplyID;
}




-(id)init;
-(void)sendCustomNotificationToApp:(struct ? )arg0 ;
-(void)sendReplyToApp:(struct ? )arg0 ;
-(void)sendCustomNotificationToController:(id)arg0 withContent:(id)arg1 reply:(id)arg2 ;
// -(void)registerHandler:(id)arg0 forNotificationType:(unk)arg1  ;
-(void)unregisterHandlerForNotificationType:(id)arg0 ;
-(void)registerHandlers;


@end


#endif