// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef STATESELECTORS_H
#define STATESELECTORS_H


#import <Foundation/Foundation.h>


@interface StateSelectors : NSObject

@property (nonatomic) SEL enterStateByPushSelector; // ivar: mEnterStateByPushSelector
@property (nonatomic) SEL enterStateByPopSelector; // ivar: mEnterStateByPopSelector
@property (nonatomic) SEL leaveStateByPushSelector; // ivar: mLeaveStateByPushSelector
@property (nonatomic) SEL leaveStateByPopSelector; // ivar: mLeaveStateByPopSelector
@property (nonatomic) id *enterStateByPushTarget; // ivar: mEnterStateByPushTarget
@property (nonatomic) id *enterStateByPopTarget; // ivar: mEnterStateByPopTarget
@property (nonatomic) id *leaveStateByPushTarget; // ivar: mLeaveStateByPushTarget
@property (nonatomic) id *leaveStateByPopTarget; // ivar: mLeaveStateByPopTarget
@property (nonatomic) id *enterStateByPushParam; // ivar: mEnterStateByPushParam
@property (nonatomic) id *enterStateByPopParam; // ivar: mEnterStateByPopParam
@property (nonatomic) id *leaveStateByPushParam; // ivar: mLeaveStateByPushParam
@property (nonatomic) id *leaveStateByPopParam; // ivar: mLeaveStateByPopParam


-(id)init;
-(void)dealloc;


@end


#endif