// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef IROMOATWEAKTIMERHANDLER_H
#define IROMOATWEAKTIMERHANDLER_H


#import <Foundation/Foundation.h>


@interface IROMoatWeakTimerHandler : NSObject

@property (weak, nonatomic) id *object; // ivar: _object
@property (nonatomic) SEL selector; // ivar: _selector


-(id)initWithObject:(id)arg0 selector:(SEL)arg1 ;
-(void)handleTimer:(id)arg0 ;


@end


#endif