// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef LEAVEMENUSTATECOMMAND_H
#define LEAVEMENUSTATECOMMAND_H


#import <Foundation/Foundation.h>

@class MCMenuStateManager;
@class MenuStateStackEntry;
@protocol MCCommand;
@protocol MCMenuStateManagerDelegate;

@interface LeaveMenuStateCommand : NSObject <MCCommand>

 {
    CGFloat mTime;
    BOOL mIsExecuting;
    BOOL mIsFinished;
    BOOL mToStack;
    BOOL mIgnoreVisibilityStack;
    MCMenuStateManager *mMenuStateManager;
    id<MCMenuStateManagerDelegate> *mDelegate;
    MenuStateStackEntry *mStackEntry;
    MenuStateStackEntry *mNewStackEntry;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)dealloc;
-(void)setupWithMenuStateManager:(id)arg0 delegate:(id)arg1 stackEntry:(id)arg2 newStackEntry:(id)arg3 toStack:(BOOL)arg4 ignoreVisibilityStack:(BOOL)arg5 ;
-(void)execute;
-(void)finish;
-(BOOL)isFinished;
+(id)commandWithMenuStateManager:(id)arg0 delegate:(id)arg1 stackEntry:(id)arg2 newStackEntry:(id)arg3 toStack:(BOOL)arg4 ignoreVisibilityStack:(BOOL)arg5 ;


@end


#endif