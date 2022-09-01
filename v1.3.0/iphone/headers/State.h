// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef STATE_H
#define STATE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class StateSelectors;

@interface State : NSObject {
    NSMutableDictionary *mSpecificStateTransitionDictionary;
    StateSelectors *mSelectors;
}


@property (readonly, nonatomic) int stateId; // ivar: mStateId


-(id)init;
-(void)dealloc;
-(void)initState:(unsigned int)arg0 ;
-(id)description;
-(id)getSpecificSelectors:(unsigned int)arg0 create:(BOOL)arg1 ;
-(void)setEnterStateSelector:(SEL)arg0 target:(id)arg1 ;
-(void)setEnterStateSelector:(SEL)arg0 target:(id)arg1 fromStateId:(unsigned int)arg2 ;
-(void)setEnterStateByPushSelector:(SEL)arg0 target:(id)arg1 ;
-(void)setEnterStateByPushSelector:(SEL)arg0 target:(id)arg1 fromStateId:(unsigned int)arg2 ;
-(void)setEnterStateByPopSelector:(SEL)arg0 target:(id)arg1 ;
-(void)setEnterStateByPopSelector:(SEL)arg0 target:(id)arg1 fromStateId:(unsigned int)arg2 ;
-(void)setLeaveStateSelector:(SEL)arg0 target:(id)arg1 ;
-(void)setLeaveStateSelector:(SEL)arg0 target:(id)arg1 toStateId:(unsigned int)arg2 ;
-(void)setLeaveStateByPushSelector:(SEL)arg0 target:(id)arg1 ;
-(void)setLeaveStateByPushSelector:(SEL)arg0 target:(id)arg1 toStateId:(unsigned int)arg2 ;
-(void)setLeaveStateByPopSelector:(SEL)arg0 target:(id)arg1 ;
-(void)setLeaveStateByPopSelector:(SEL)arg0 target:(id)arg1 toStateId:(unsigned int)arg2 ;
-(void)setParam:(id)arg0 ;
-(void)setEnterStateParam:(id)arg0 ;
-(void)setEnterStateParam:(id)arg0 fromStateId:(unsigned int)arg1 ;
-(void)setEnterStateByPushParam:(id)arg0 ;
-(void)setEnterStateByPushParam:(id)arg0 fromStateId:(unsigned int)arg1 ;
-(void)setEnterStateByPopParam:(id)arg0 ;
-(void)setEnterStateByPopParam:(id)arg0 fromStateId:(unsigned int)arg1 ;
-(void)setLeaveStateParam:(id)arg0 ;
-(void)setLeaveStateParam:(id)arg0 toStateId:(unsigned int)arg1 ;
-(void)setLeaveStateByPushParam:(id)arg0 ;
-(void)setLeaveStateByPushParam:(id)arg0 toStateId:(unsigned int)arg1 ;
-(void)setLeaveStateByPopParam:(id)arg0 ;
-(void)setLeaveStateByPopParam:(id)arg0 toStateId:(unsigned int)arg1 ;
-(void)enterStateByPush:(unsigned int)arg0 ;
-(void)enterStateByPop:(unsigned int)arg0 ;
-(void)leaveStateByPush:(unsigned int)arg0 ;
-(void)leaveStateByPop:(unsigned int)arg0 ;
+(id)createState:(unsigned int)arg0 ;


@end


#endif