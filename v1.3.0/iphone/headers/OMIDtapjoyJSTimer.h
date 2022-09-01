// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef OMIDTAPJOYJSTIMER_H
#define OMIDTAPJOYJSTIMER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol OMIDtapjoyJSInvoker;

@interface OMIDtapjoyJSTimer : NSObject

@property (readonly, nonatomic) NSUInteger timerIdCounter; // ivar: _timerIdCounter
@property (weak, nonatomic) NSObject<OMIDtapjoyJSInvoker> *jsInvoker; // ivar: _jsInvoker
@property (readonly, nonatomic) NSMutableSet *timerIds; // ivar: _timerIds


-(id)init;
-(void)setupMethodsForJSObject:(id)arg0 ;
-(id)scheduleTimerWithTimeout:(id)arg0 callback:(id)arg1 repeatable:(BOOL)arg2 ;
-(void)scheduleTimerWithId:(id)arg0 timeout:(CGFloat)arg1 callback:(id)arg2 repeatable:(BOOL)arg3 ;
-(void)handleTimerWithId:(id)arg0 timeout:(CGFloat)arg1 callback:(id)arg2 repeatable:(BOOL)arg3 ;
-(void)cancelTimerWithId:(id)arg0 ;
-(void)cancelAllTimers;


@end


#endif