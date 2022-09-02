// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADVIEWHIERARCHYTRAVERSER_H
#define GADVIEWHIERARCHYTRAVERSER_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>


@interface GADViewHierarchyTraverser : NSObject {
    BOOL _traversing;
    NSInteger _sequenceNumber;
    NSObject<OS_dispatch_queue> *_SDKLowPrioritySerialQueue;
}




-(id)init;
// -(void)traverseView:(id)arg0 traversalBlock:(id)arg1 completionBlock:(unk)arg2  ;
-(void)setTraversing:(BOOL)arg0 ;


@end


#endif