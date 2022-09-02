// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ANSLIFECYCLEEVENT_H
#define ANSLIFECYCLEEVENT_H


#import <Foundation/Foundation.h>

@class ANSEvent;

@interface ANSLifecycleEvent : ANSEvent {
    NSString *_name;
}




-(id)initWithNotification:(id)arg0 ;
-(id)initWithName:(id)arg0 ;
-(id)name;
-(id)dictionaryRepresentation;
-(BOOL)triggersFlush;
+(id)eventWithNotification:(id)arg0 ;
+(id)installEvent;
+(id)appLaunchedEvent;
+(id)notificationNameMap;
+(id)nameFromNotification:(id)arg0 ;


@end


#endif