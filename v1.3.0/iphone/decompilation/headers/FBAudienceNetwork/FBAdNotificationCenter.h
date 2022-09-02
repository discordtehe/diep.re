// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADNOTIFICATIONCENTER_H
#define FBADNOTIFICATIONCENTER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface FBAdNotificationCenter : NSObject

@property (retain, nonatomic) NSMutableArray *notifications; // ivar: _notifications
@property (weak, nonatomic) id *object; // ivar: _object


-(id)init;
-(id)notificationCenter;
-(void)addNotificationWithName:(id)arg0 block:(id)arg1 ;
-(void)addNotificationWithName:(id)arg0 object:(id)arg1 block:(id)arg2 ;
-(void)addNotificationWithName:(id)arg0 object:(id)arg1 queue:(id)arg2 block:(id)arg3 ;
-(void)removeAllObservers;
-(void)dealloc;
+(void)initialize;
+(id)notificationCenterForObject:(id)arg0 ;
+(id)notificationCenterForObject:(id)arg0 update:(BOOL)arg1 ;
+(void)setNotificationCenter:(id)arg0 forObject:(id)arg1 ;
+(void)removeAllObserversForObject:(id)arg0 ;


@end


#endif