// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBBDCOLLECTEDSIGNAL_H
#define FBBDCOLLECTEDSIGNAL_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class FBBDSignalValueOrError;

@interface FBBDCollectedSignal : NSObject {
    BOOL _isOffsite;
}


@property (readonly, nonatomic) CGFloat time; // ivar: _time
@property (readonly, nonatomic) NSDictionary *context; // ivar: _context
@property (readonly, nonatomic) FBBDSignalValueOrError *valueOrError; // ivar: _valueOrError
@property (readonly, nonatomic) NSUInteger dataSize;
@property (readonly, nonatomic) NSDictionary *collectedSignalDict;


-(id)initWithTime:(CGFloat)arg0 withContext:(id)arg1 withValueOrError:(id)arg2 withIsOffsiteFlag:(BOOL)arg3 ;
-(BOOL)isEqualToCollectedSignal:(id)arg0 withFlags:(NSUInteger)arg1 ;


@end


#endif