// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCSCHEDULER_H
#define CCSCHEDULER_H


#import <Foundation/Foundation.h>


@interface CCScheduler : NSObject {
    ? updatesNeg;
    ? updates0;
    ? updatesPos;
    *_hashUpdateEntry hashForUpdates;
    ? hashForTimers;
    ? currentTarget;
    BOOL currentTargetSalvaged;
    *unk impMethod;
    SEL updateSelector;
    BOOL updateHashLocked;
}


@property (nonatomic) CGFloat timeScale; // ivar: _timeScale
@property (readonly, nonatomic, getter=isPaused) BOOL paused; // ivar: _paused


-(void)scheduleSelector:(SEL)arg0 forTarget:(id)arg1 interval:(CGFloat)arg2 paused:(BOOL)arg3 repeat:(unsigned int)arg4 delay:(CGFloat)arg5 ;
-(void)unscheduleAllSelectorsForTarget:(id)arg0 ;
-(void)unscheduleAllSelectorsWithMinPriority:(NSInteger)arg0 ;
-(void)unscheduleAllSelectors;
-(id)init;
-(id)description;
-(void)dealloc;
-(void)removeHashElement:(struct _hashSelectorEntry *)arg0 ;
-(void)scheduleSelector:(SEL)arg0 forTarget:(id)arg1 interval:(CGFloat)arg2 paused:(BOOL)arg3 ;
-(void)scheduleSelector:(SEL)arg0 forTarget:(id)arg1 interval:(CGFloat)arg2 repeat:(unsigned int)arg3 delay:(CGFloat)arg4 paused:(BOOL)arg5 ;
-(void)scheduleBlockForKey:(id)arg0 target:(id)arg1 interval:(CGFloat)arg2 repeat:(unsigned int)arg3 delay:(CGFloat)arg4 paused:(BOOL)arg5 block:(id)arg6 ;
-(void)unscheduleSelector:(SEL)arg0 forTarget:(id)arg1 ;
-(void)unscheduleBlockForKey:(id)arg0 target:(id)arg1 ;
-(void)priorityIn:(struct _listEntry **)arg0 target:(id)arg1 priority:(NSInteger)arg2 paused:(BOOL)arg3 ;
-(?)appendIn:(?)arg0 targetpaused;
-(void)scheduleUpdateForTarget:(id)arg0 priority:(NSInteger)arg1 paused:(BOOL)arg2 ;
-(void)removeUpdateFromHash:(struct _listEntry *)arg0 ;
-(void)unscheduleUpdateForTarget:(id)arg0 ;
-(void)unscheduleAll;
-(void)unscheduleAllWithMinPriority:(NSInteger)arg0 ;
-(void)unscheduleAllForTarget:(id)arg0 ;
-(void)resumeTarget:(id)arg0 ;
-(void)pauseTarget:(id)arg0 ;
-(BOOL)isTargetPaused:(id)arg0 ;
-(id)pauseAllTargets;
-(id)pauseAllTargetsWithMinPriority:(NSInteger)arg0 ;
-(void)resumeTargets:(id)arg0 ;
-(void)update:(CGFloat)arg0 ;
+(id)sharedScheduler;


@end


#endif