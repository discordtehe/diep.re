// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADBLOCKSIGNALSOURCE_H
#define GADBLOCKSIGNALSOURCE_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>

@protocol GADSignalSource;

@interface GADBlockSignalSource : NSObject <GADSignalSource>

 {
    NSObject<OS_dispatch_queue> *_queue;
    id *_signalBlock;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithQueue:(id)arg0 signalBlock:(id)arg1 ;
-(void)getSignalUpdateQueue:(*id)arg0 signalCreationBlock:(*id)arg1 ;


@end


#endif