// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ANSACTIVITYOPERATION_H
#define ANSACTIVITYOPERATION_H


#import <Foundation/Foundation.h>

@class ANSActivity;

@interface ANSActivityOperation : NSOperation

@property (readonly, nonatomic) ANSActivity *activity; // ivar: _activity


-(void)startActivityWithName:(id)arg0 options:(NSUInteger)arg1 ;
-(void)main;
+(id)operationByStartingActivityName:(id)arg0 options:(NSUInteger)arg1 ;


@end


#endif