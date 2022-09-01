// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ENTERMENUSTATECOMMAND_H
#define ENTERMENUSTATECOMMAND_H


#import <Foundation/Foundation.h>

@class MCMenuStateManager;
@class MenuStateStackEntry;
@protocol MCCommand;
@protocol MCMenuStateManagerDelegate;

@interface EnterMenuStateCommand : NSObject <MCCommand>

 {
    CGFloat mTime;
    BOOL mIsExecuting;
    BOOL mIsFinished;
    BOOL mFromStack;
    BOOL mIgnoreVisibilityStack;
    BOOL mEnableInput;
    MCMenuStateManager *mMenuStateManager;
    id<MCMenuStateManagerDelegate> *mDelegate;
    MenuStateStackEntry *mStackEntry;
    MenuStateStackEntry *mPreviousStackEntry;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)dealloc;
-(void)setupWithMenuStateManager:(id)arg0 delegate:(id)arg1 stackEntry:(id)arg2 previousStackEntry:(id)arg3 fromStack:(BOOL)arg4 ignoreVisibilityStack:(BOOL)arg5 enableInput:(BOOL)arg6 ;
-(void)execute;
-(void)finish;
-(BOOL)isFinished;
+(id)commandWithMenuStateManager:(id)arg0 delegate:(id)arg1 stackEntry:(id)arg2 previousStackEntry:(id)arg3 fromStack:(BOOL)arg4 ignoreVisibilityStack:(BOOL)arg5 enableInput:(BOOL)arg6 ;


@end


#endif