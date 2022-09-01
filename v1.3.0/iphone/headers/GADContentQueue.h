// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADCONTENTQUEUE_H
#define GADCONTENTQUEUE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface GADContentQueue : NSObject {
    NSMutableDictionary *_contents;
    NSMutableArray *_sequenceNumbers;
    NSUInteger _size;
}




-(id)initWithQueueSize:(NSInteger)arg0 ;
-(id)init;
-(id)contentWithHighestScore;
-(void)deduplicate:(id)arg0 ;
-(void)enqueueContent:(id)arg0 ;


@end


#endif