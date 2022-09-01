// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef APMALARM_H
#define APMALARM_H

@protocol OS_dispatch_queue, OS_dispatch_source;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface APMAlarm : NSObject {
    NSObject<OS_dispatch_queue> *_queue;
    NSObject<OS_dispatch_source> *_timer;
    NSString *_name;
}


@property (readonly, nonatomic) NSDate *scheduledTimestamp; // ivar: _scheduledTimestamp


-(id)initWithDispatchQueue:(id)arg0 name:(id)arg1 ;
-(void)runAfterDelay:(CGFloat)arg0 withBlock:(id)arg1 ;
-(void)cancel;
-(BOOL)hasActiveTimer;
-(void)dealloc;


@end


#endif