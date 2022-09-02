// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCOLONY_AVIDEVENTDISPATCHER_H
#define ADCOLONY_AVIDEVENTDISPATCHER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class AdColony_AvidEvent;
@protocol AdColony_AvidEventDispatcherDelegate;

@interface AdColony_AvidEventDispatcher : NSObject

@property (retain, nonatomic) AdColony_AvidEvent *readyEvent; // ivar: _readyEvent
@property (nonatomic) BOOL shouldWaitForReadyEvent; // ivar: _shouldWaitForReadyEvent
@property (retain, nonatomic) NSMutableArray *eventBuffer; // ivar: _eventBuffer
@property (weak, nonatomic) NSObject<AdColony_AvidEventDispatcherDelegate> *delegate; // ivar: _delegate
@property (readonly, nonatomic) BOOL isReadyEventReceived;


-(id)initWithShouldWaitForReadyEvent:(BOOL)arg0 ;
-(void)postEvent:(id)arg0 ;
-(void)forwardEventsFromBufferToDelegate;
-(void)pushBufferToDelegate;
-(void)assertItIsTheFirstReadyEvent;
-(void)assertReadyEventAllowed;
-(void)assertReadyEventReceived;


@end


#endif