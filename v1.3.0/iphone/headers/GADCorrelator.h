// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADCORRELATOR_H
#define GADCORRELATOR_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>


@interface GADCorrelator : NSObject {
    NSObject<OS_dispatch_queue> *_lockQueue;
    unsigned int _correlationID;
}


@property (readonly) unsigned int correlationID;


-(id)init;
-(void)reset;


@end


#endif