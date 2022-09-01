// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef STATEMANAGER_H
#define STATEMANAGER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface StateManager : NSObject {
    NSMutableArray *mStateStack;
    NSMutableDictionary *mStateDictionary;
    NSMutableDictionary *mBufferedTasksSchedulers;
}




-(id)init;
-(void)dealloc;
-(void)addState:(id)arg0 ;
-(void)removeState:(id)arg0 ;
-(void)removeAllStates;
-(unsigned int)getCurrentStateId;
-(id)getAllStates;
-(unsigned int)getPushedStateId:(unsigned int)arg0 ;
-(unsigned int)getStateStackSize;
-(BOOL)isStateOnStack:(unsigned int)arg0 ;
-(void)setState:(unsigned int)arg0 ;
-(void)pushState:(unsigned int)arg0 ;
-(void)popState;
-(void)popToFirstState;
-(void)popToFirstState:(BOOL)arg0 ;
-(void)clearStateStack;
-(id)getBufferedTasksScheduler;
-(id)getBufferedTasksSchedulerForState:(id)arg0 ;
+(id)sharedStateManager;
+(BOOL)isStateManagerInitialized;
+(void)releaseSharedStateManager;


@end


#endif