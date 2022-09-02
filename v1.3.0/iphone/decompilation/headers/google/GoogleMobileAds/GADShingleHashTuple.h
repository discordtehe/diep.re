// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADSHINGLEHASHTUPLE_H
#define GADSHINGLEHASHTUPLE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface GADShingleHashTuple : NSObject

@property (readonly, nonatomic) NSArray *shingle; // ivar: _shingle
@property (readonly, nonatomic) NSUInteger hashValue; // ivar: _hashValue


-(id)initWithShingle:(id)arg0 hashValue:(NSUInteger)arg1 ;


@end


#endif