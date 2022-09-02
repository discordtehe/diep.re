// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCARRAY_H
#define CCARRAY_H


#import <Foundation/Foundation.h>

@protocol NSFastEnumeration;
@protocol NSCoding;
@protocol NSCopying;

@interface CCArray : NSObject <NSFastEnumeration, NSCoding, NSCopying>

 {
    *ccArray data;
}




-(id)init;
-(id)initWithCapacity:(NSUInteger)arg0 ;
-(id)initWithArray:(id)arg0 ;
-(id)initWithNSArray:(id)arg0 ;
-(id)initWithCoder:(id)arg0 ;
-(NSUInteger)count;
-(NSUInteger)capacity;
-(NSUInteger)indexOfObject:(id)arg0 ;
-(id)objectAtIndex:(NSUInteger)arg0 ;
-(BOOL)containsObject:(id)arg0 ;
-(id)lastObject;
-(id)randomObject;
-(id)getNSArray;
-(BOOL)isEqualToArray:(id)arg0 ;
-(void)addObject:(id)arg0 ;
-(void)addObjectsFromArray:(id)arg0 ;
-(void)addObjectsFromNSArray:(id)arg0 ;
-(void)insertObject:(id)arg0 atIndex:(NSUInteger)arg1 ;
-(void)removeObject:(id)arg0 ;
-(void)removeObjectAtIndex:(NSUInteger)arg0 ;
-(void)fastRemoveObject:(id)arg0 ;
-(void)fastRemoveObjectAtIndex:(NSUInteger)arg0 ;
-(void)removeObjectsInArray:(id)arg0 ;
-(void)removeLastObject;
-(void)removeAllObjects;
-(void)exchangeObject:(id)arg0 withObject:(id)arg1 ;
-(void)exchangeObjectAtIndex:(NSUInteger)arg0 withObjectAtIndex:(NSUInteger)arg1 ;
-(void)replaceObjectAtIndex:(NSUInteger)arg0 withObject:(id)arg1 ;
-(void)reverseObjects;
-(void)reduceMemoryFootprint;
-(void)makeObjectsPerformSelector:(SEL)arg0 ;
-(void)makeObjectsPerformSelector:(SEL)arg0 withObject:(id)arg1 ;
-(void)makeObjectPerformSelectorWithArrayObjects:(id)arg0 selector:(SEL)arg1 ;
-(NSUInteger)countByEnumeratingWithState:(struct ? *)arg0 objects:(*id)arg1 count:(NSUInteger)arg2 ;
-(void)insertionSortUsingCFuncComparator:(*unk)arg0 ;
-(void)qsortUsingCFuncComparator:(*unk)arg0 ;
-(void)mergesortLUsingCFuncComparator:(*unk)arg0 ;
-(void)insertionSort:(SEL)arg0 ;
-(void)sortUsingSelector:(SEL)arg0 ;
-(void)sortUsingFunction:(*unk)arg0 context:(*void)arg1 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)encodeWithCoder:(id)arg0 ;
-(void)dealloc;
-(id)description;
+(id)array;
+(id)arrayWithCapacity:(NSUInteger)arg0 ;
+(id)arrayWithArray:(id)arg0 ;
+(id)arrayWithNSArray:(id)arg0 ;


@end


#endif