// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADBLOCKINVOCATION_H
#define GADBLOCKINVOCATION_H


#import <Foundation/Foundation.h>


@interface GADBlockInvocation : NSObject {
    id *_block;
}




-(id)initWithBlock:(id)arg0 ;
-(void)invokeBlockWithObject:(id)arg0 ;


@end


#endif