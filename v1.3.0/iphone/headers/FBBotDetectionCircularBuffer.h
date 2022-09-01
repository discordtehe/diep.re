// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBBOTDETECTIONCIRCULARBUFFER_H
#define FBBOTDETECTIONCIRCULARBUFFER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface FBBotDetectionCircularBuffer : NSObject {
    NSUInteger _capacity;
    NSMutableArray *_objects;
    NSInteger _headIndex;
    NSInteger _tailIndex;
    BOOL _isFull;
    mutex _indexMutex;
}


@property (readonly, nonatomic) NSUInteger count;
@property (readonly, nonatomic) NSUInteger validObjectsCount;


-(id)initWithCapacity:(NSUInteger)arg0 ;
-(void)addObject:(id)arg0 ;
-(void)clearObjects;
-(id)removeLatestObject;
-(id)removeOldestObject;
-(id)readAllObjects;
-(id)readLatestObject;
-(id)readOldestObject;


@end


#endif