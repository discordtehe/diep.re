// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CLSTHREADARRAYOPERATION_H
#define CLSTHREADARRAYOPERATION_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface CLSThreadArrayOperation : NSOperation

@property (retain, nonatomic) NSArray *threadArray; // ivar: _threadArray


-(void)enumerateFramesWithBlock:(id)arg0 ;


@end


#endif