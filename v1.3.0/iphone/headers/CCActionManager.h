// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCACTIONMANAGER_H
#define CCACTIONMANAGER_H


#import <Foundation/Foundation.h>


@interface CCActionManager : NSObject {
    ? targets;
    ? currentTarget;
    BOOL currentTargetSalvaged;
}




-(id)init;
-(id)description;
-(void)dealloc;
-(void)deleteHashElement:(struct _hashElement *)arg0 ;
-(void)actionAllocWithHashElement:(struct _hashElement *)arg0 ;
-(?)removeActionAtIndexhashElement;
-(void)pauseTarget:(id)arg0 ;
-(void)resumeTarget:(id)arg0 ;
-(id)pauseAllRunningActions;
-(void)resumeTargets:(id)arg0 ;
-(void)addAction:(id)arg0 target:(id)arg1 paused:(BOOL)arg2 ;
-(void)removeAllActions;
-(void)removeAllActionsFromTarget:(id)arg0 ;
-(void)removeAction:(id)arg0 ;
-(void)removeActionByTag:(NSInteger)arg0 target:(id)arg1 ;
-(id)getActionByTag:(NSInteger)arg0 target:(id)arg1 ;
-(NSUInteger)numberOfRunningActionsInTarget:(id)arg0 ;
-(void)update:(CGFloat)arg0 ;
+(id)sharedManager;


@end


#endif