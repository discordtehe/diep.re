// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCMENUSTATEMANAGER_H
#define MCMENUSTATEMANAGER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class MCCommandQueue;
@protocol MCMenuStateManagerDelegate;

@interface MCMenuStateManager : NSObject {
    MCCommandQueue *mCommandQueue;
    NSMutableArray *mMenuStateStack;
    NSMutableArray *mMenuStateVisibilityStack;
    NSMutableDictionary *mMenuStates;
}


@property (retain, nonatomic) NSObject<MCMenuStateManagerDelegate> *delegate; // ivar: mDelegate
@property (nonatomic) BOOL enableInputOnlyAtTransitionEnd; // ivar: mEnableInputOnlyAtTransitionEnd


-(id)init;
-(void)dealloc;
-(id)fetchMenuState:(NSUInteger)arg0 ;
-(id)fetchMenuStateInstance:(NSUInteger)arg0 ;
-(id)createStackEntryFromMenuState:(id)arg0 ;
-(void)cleanStackEntry:(id)arg0 ;
-(void)cleanStackEntries;
-(void)cleanUnusedInstances;
-(void)enteredFullscreenState;
-(void)leftFullscreenState;
-(void)addMenuStateWithId:(NSUInteger)arg0 ;
-(void)purgeCachedData;
-(void)purgeCachedData:(BOOL)arg0 ;
-(id)commandForSimplyPushingMenuState:(NSUInteger)arg0 replaceCurrentStateAllowed:(BOOL)arg1 enableInputOnlyAtTransitionEnd:(BOOL)arg2 ;
// -(id)commandForPushingMenuState:(NSUInteger)arg0 withConditionBlock:(id)arg1 replaceCurrentStateAllowed:(unk)arg2  ;
-(id)commandForPoppingMenuStateWithConditionBlock:(id)arg0 ;
-(id)commandForPoppingAllMenuStatesWithConditionBlock:(id)arg0 ;
-(id)commandForClearingMenuStatesWithConditionBlock:(id)arg0 ;
-(id)commandForRefreshingWithConditionBlock:(id)arg0 ;
-(id)commandForRefreshingAllStatesWithConditionBlock:(id)arg0 ;
-(void)goToMenuStateWithId:(NSUInteger)arg0 ;
-(void)goToMenuStateWithId:(NSUInteger)arg0 withConditionBlock:(id)arg1 ;
// -(void)goToMenuStateWithId:(NSUInteger)arg0 withConditionBlock:(id)arg1 replaceCurrentStateAllowed:(unk)arg2  ;
-(void)leaveMenuState;
-(void)leaveMenuStateWithConditionBlock:(id)arg0 ;
-(void)leaveAllMenuStates;
-(void)leaveAllMenuStatesWithConditionBlock:(id)arg0 ;
-(void)clearMenuStates;
-(void)clearMenuStatesWithConditionBlock:(id)arg0 ;
-(void)refresh;
-(void)refreshWithConditionBlock:(id)arg0 ;
-(void)refreshAllMenuStates;
-(void)refreshAllMenuStatesWithConditionBlock:(id)arg0 ;
-(void)processContextEvent:(id)arg0 withData:(id)arg1 ;
-(void)clearEnqueuedCommands;
-(BOOL)isMenuStateIdOnStack:(NSUInteger)arg0 ;
-(BOOL)isMenuStateAvailableForId:(NSUInteger)arg0 ;
-(id)menuStateForId:(NSUInteger)arg0 ;
-(NSUInteger)menuStateStackSize;
-(NSUInteger)menuStateIdAtStackDepth:(NSUInteger)arg0 ;
-(id)menuStateAtStackDepth:(NSUInteger)arg0 ;
-(NSUInteger)currentMenuStateId;
-(id)currentMenuState;
-(id)currentMenuStateIdStack;
-(id)currentMenuStateStack;
-(id)parameterWithKey:(id)arg0 forMenuStateWithId:(NSUInteger)arg1 ;
-(id)parametersForMenuStateWithId:(NSUInteger)arg0 ;
-(BOOL)processMenuStateParameter:(id)arg0 key:(id)arg1 menuStateId:(NSUInteger)arg2 injection:(BOOL)arg3 ;
-(BOOL)processMenuStateParameters:(id)arg0 keys:(id)arg1 menuStateId:(NSUInteger)arg2 injection:(BOOL)arg3 ;
-(BOOL)processMenuStateParametersWithObjectsAndKeys:(id)arg0 menuStateId:(NSUInteger)arg1 injection:(BOOL)arg2 ;
-(BOOL)processMenuStateParametersWithDictionary:(id)arg0 menuStateId:(NSUInteger)arg1 injection:(BOOL)arg2 ;
-(BOOL)setParameter:(id)arg0 withKey:(id)arg1 forMenuStateWithId:(NSUInteger)arg2 ;
-(BOOL)setParameters:(id)arg0 withKeys:(id)arg1 forMenuStateWithId:(NSUInteger)arg2 ;
-(BOOL)setParametersWithObjectsAndKeys:(id)arg0 forMenuStateWithId:(NSUInteger)arg1 ;
-(BOOL)setParametersWithDictionary:(id)arg0 forMenuStateWithId:(NSUInteger)arg1 ;
-(void)removeParameterWithKey:(id)arg0 forMenuStateWithId:(NSUInteger)arg1 ;
-(void)removeParametersWithKeys:(id)arg0 forMenuStateWithId:(NSUInteger)arg1 ;
-(void)removeAllParametersForMenuStateWithId:(NSUInteger)arg0 ;
-(BOOL)injectParameter:(id)arg0 withKey:(id)arg1 forMenuStateWithId:(NSUInteger)arg2 ;
-(BOOL)injectParameters:(id)arg0 withKeys:(id)arg1 forMenuStateWithId:(NSUInteger)arg2 ;
-(BOOL)injectParametersWithObjectsAndKeys:(id)arg0 forMenuStateWithId:(NSUInteger)arg1 ;
-(BOOL)injectParametersWithDictionary:(id)arg0 forMenuStateWithId:(NSUInteger)arg1 ;


@end


#endif