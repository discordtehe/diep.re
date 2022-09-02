// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCWAITCOMMAND_H
#define MCWAITCOMMAND_H


#import <Foundation/Foundation.h>

@protocol MCCommand;

@interface MCWaitCommand : NSObject <MCCommand>

 {
    CGFloat mTime;
    BOOL mIsExecuting;
    BOOL mIsFinished;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)setTime:(CGFloat)arg0 ;
-(void)execute;
-(void)finish;
-(BOOL)isFinished;
+(id)commandWithTime:(CGFloat)arg0 ;


@end


#endif