// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEBACKOFFCALCULATOR_H
#define VUNGLEBACKOFFCALCULATOR_H


#import <Foundation/Foundation.h>


@interface VungleBackoffCalculator : NSObject

@property (nonatomic) NSUInteger attemptCount; // ivar: _attemptCount
@property (nonatomic) NSUInteger backoffOverride; // ivar: _backoffOverride


-(id)init;
-(void)increaseAttempts;
-(void)resetAttempts;
-(NSUInteger)backoffTime;


@end


#endif