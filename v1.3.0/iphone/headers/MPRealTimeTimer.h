// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPREALTIMETIMER_H
#define MPREALTIMETIMER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class MPTimer;

@interface MPRealTimeTimer : NSObject

@property (retain, nonatomic) MPTimer *timer; // ivar: _timer
@property (copy, nonatomic) id *block; // ivar: _block
@property (nonatomic) CGFloat interval; // ivar: _interval
@property (nonatomic) BOOL isScheduled; // ivar: _isScheduled
@property (copy, nonatomic) NSDate *fireDate; // ivar: _fireDate
@property (nonatomic) CGFloat currentTimeInterval; // ivar: _currentTimeInterval


-(id)initWithInterval:(CGFloat)arg0 block:(id)arg1 ;
-(void)scheduleNow;
-(void)invalidate;
-(void)fire;
-(void)runBlock;
-(void)didEnterBackground;
-(void)willEnterForeground;
-(void)addNotificationCenterObservers;
-(void)dealloc;


@end


#endif