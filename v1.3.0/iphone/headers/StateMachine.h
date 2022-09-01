// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef STATEMACHINE_H
#define STATEMACHINE_H


#import <Foundation/Foundation.h>

@class MCMenuStateManager;
@protocol MCMenuStateManagerDelegate;

@interface StateMachine : NSObject <MCMenuStateManagerDelegate>

 {
    MCMenuStateManager *_menuStateManager;
    deque<ApplicationState, std::__1::allocator<ApplicationState> > _pendingStateList;
    deque<ApplicationState, std::__1::allocator<ApplicationState> > _nextStateQueue;
    BOOL _inForceUpgrade;
    BOOL _reloadedStatesStack;
    basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > _storedLeaderboard;
}


@property (nonatomic) BOOL receivedGameOver; // ivar: _receivedGameOver
@property ? storedLeaderboard;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)createMenuState:(NSUInteger)arg0 ;
-(void)destroyMenuState:(id)arg0 ;
-(void)reloadStateWithNewConfiguration:(unsigned int)arg0 andLeaveFromStack:(BOOL)arg1 ;
-(void)willEnterState:(NSUInteger)arg0 fromStack:(BOOL)arg1 ;
-(void)onDisconnect:(BOOL)arg0 shouldReconnect:(BOOL)arg1 ;
-(void)goToApplicationState:(unsigned int)arg0 ;
-(void)queueNextApplicationState:(unsigned int)arg0 ;
-(void)goToApplicationState:(unsigned int)arg0 withConditionBlock:(id)arg1 ;
-(void)leaveApplicationStateFromTop:(unsigned int)arg0 ;
-(void)injectParameterForState:(unsigned int)arg0 param:(id)arg1 withKey:(id)arg2 ;
-(id)instanceOfState:(unsigned int)arg0 ;
-(void)insertParameterForState:(unsigned int)arg0 param:(id)arg1 withKey:(id)arg2 ;
-(BOOL)isStateOnTop:(unsigned int)arg0 ;
-(BOOL)isStateOnStack:(unsigned int)arg0 ;
-(BOOL)isAutoQueuedState:(unsigned int)arg0 ;
-(BOOL)isStateAlreadyQueued:(unsigned int)arg0 ;
-(void)removeFromPendingList:(unsigned int)arg0 ;


@end


#endif