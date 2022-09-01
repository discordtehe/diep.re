// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADCONCURRENTQUEUE_H
#define FBADCONCURRENTQUEUE_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface FBAdConcurrentQueue : NSObject

@property (retain, nonatomic) NSMutableArray *storage; // ivar: _storage
@property (retain, nonatomic) NSObject<OS_dispatch_queue> *queue; // ivar: _queue


-(id)init;
-(void)pushObject:(id)arg0 ;
-(void)pop:(id)arg0 ;
-(void)peek:(id)arg0 ;
-(void)popAll:(id)arg0 ;
+(void)initialize;


@end


#endif