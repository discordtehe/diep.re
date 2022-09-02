// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef REFRESHMENUSTATECOMMAND_H
#define REFRESHMENUSTATECOMMAND_H


#import <Foundation/Foundation.h>

@class MenuStateStackEntry;
@protocol MCCommand;
@protocol MCMenuStateManagerDelegate;

@interface RefreshMenuStateCommand : NSObject <MCCommand>

 {
    CGFloat mTime;
    BOOL mIsExecuting;
    BOOL mIsFinished;
    id<MCMenuStateManagerDelegate> *mDelegate;
    MenuStateStackEntry *mStackEntry;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)dealloc;
-(void)setupWithDelegate:(id)arg0 stackEntry:(id)arg1 ;
-(void)execute;
-(void)finish;
-(BOOL)isFinished;
+(id)commandWithDelegate:(id)arg0 stackEntry:(id)arg1 ;


@end


#endif