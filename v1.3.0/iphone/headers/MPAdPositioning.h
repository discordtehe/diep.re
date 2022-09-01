// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPADPOSITIONING_H
#define MPADPOSITIONING_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol NSCopying;

@interface MPAdPositioning : NSObject <NSCopying>



@property (retain, nonatomic) NSMutableOrderedSet *fixedPositions; // ivar: _fixedPositions
@property (nonatomic) NSUInteger repeatingInterval; // ivar: _repeatingInterval


-(id)init;
-(id)copyWithZone:(struct _NSZone *)arg0 ;


@end


#endif