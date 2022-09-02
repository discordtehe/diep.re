// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADBINARYHEAP_H
#define GADBINARYHEAP_H


#import <Foundation/Foundation.h>


@interface GADBinaryHeap : NSObject {
    *__CFBinaryHeap _heap;
}


@property (readonly, nonatomic) NSInteger count;


-(id)initWithComparator:(*unk)arg0 ;
-(void)dealloc;
-(void)addObjectToHeap:(id)arg0 ;
-(BOOL)containsObject:(id)arg0 ;
-(id)minimum;
-(id)removedMinimum;
-(id)sortedObjects;


@end


#endif