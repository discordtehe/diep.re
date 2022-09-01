// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADCONCURRENTARRAY_H
#define FBADCONCURRENTARRAY_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol NSFastEnumeration;

@interface FBAdConcurrentArray : NSObject <NSFastEnumeration>

 {
    recursive_mutex _storageLock;
}


@property (retain, nonatomic) NSMutableArray *storage; // ivar: _storage
@property (readonly) NSUInteger count;


-(id)init;
-(id)initWithCapacity:(NSUInteger)arg0 ;
-(id)initWithCoder:(id)arg0 ;
-(NSUInteger)countByEnumeratingWithState:(struct ? *)arg0 objects:(*id)arg1 count:(NSUInteger)arg2 ;
-(id)objectAtIndex:(NSUInteger)arg0 ;
-(void)addObject:(id)arg0 ;
-(void)insertObject:(id)arg0 atIndex:(NSUInteger)arg1 ;
-(void)removeLastObject;
-(void)removeObjectAtIndex:(NSUInteger)arg0 ;
-(void)removeObjectIdenticalTo:(id)arg0 ;
-(void)replaceObjectAtIndex:(NSUInteger)arg0 withObject:(id)arg1 ;
-(void)removeObject:(id)arg0 ;
-(void)removeAllObjects;
-(id)objectAtIndexedSubscript:(NSUInteger)arg0 ;
-(void)setObject:(id)arg0 atIndexedSubscript:(NSUInteger)arg1 ;
-(id)nonConcurrentCopy;
+(id)array;
+(id)arrayWithCapacity:(NSUInteger)arg0 ;


@end


#endif