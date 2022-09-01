// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADMEMORYUTILIZATIONMONITOR_H
#define GADMEMORYUTILIZATIONMONITOR_H


#import <Foundation/Foundation.h>


@interface GADMemoryUtilizationMonitor : NSObject

@property (readonly, nonatomic) NSUInteger initiallyAllocatedByteCount; // ivar: _initiallyAllocatedByteCount
@property (readonly, nonatomic) NSUInteger peakAllocatedByteCount; // ivar: _peakAllocatedByteCount
@property (readonly, nonatomic) NSUInteger currentlyAllocatedByteCount; // ivar: _currentlyAllocatedByteCount


-(id)init;
-(void)update;


@end


#endif