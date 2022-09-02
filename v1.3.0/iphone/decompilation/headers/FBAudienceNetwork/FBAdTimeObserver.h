// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADTIMEOBSERVER_H
#define FBADTIMEOBSERVER_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>


@interface FBAdTimeObserver : NSObject

@property (readonly, nonatomic) id *block; // ivar: _block
@property (retain, nonatomic) id *downstreamObserver; // ivar: _downstreamObserver
@property (readonly, nonatomic) ? interval; // ivar: _interval
@property (readonly, nonatomic) NSObject<OS_dispatch_queue> *queue; // ivar: _queue


-(id)init;
-(id)initWithInterval:(struct ? )arg0 queue:(id)arg1 usingBlock:(id)arg2 ;


@end


#endif