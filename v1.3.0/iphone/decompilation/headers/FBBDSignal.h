// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBBDSIGNAL_H
#define FBBDSIGNAL_H


#import <Foundation/Foundation.h>


@interface FBBDSignal : NSObject

@property (readonly, nonatomic) NSNumber *signalId; // ivar: _signalId
@property (readonly, nonatomic) NSUInteger signalFlags; // ivar: _signalFlags
@property (readonly, nonatomic) id *signalCollectorBlock; // ivar: _signalCollectorBlock


-(id)initWithSignalId:(id)arg0 withSignalFlags:(NSUInteger)arg1 withSignalCollectorBlock:(id)arg2 ;


@end


#endif