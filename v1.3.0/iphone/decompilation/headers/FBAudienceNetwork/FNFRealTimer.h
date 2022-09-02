// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FNFREALTIMER_H
#define FNFREALTIMER_H

@protocol OS_dispatch_source;

#import <Foundation/Foundation.h>

@protocol FNFTimer;

@interface FNFRealTimer : NSObject <FNFTimer>

 {
    NSObject<OS_dispatch_source> *_timer;
    BOOL _suspended;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithInterval:(NSUInteger)arg0 fireOnce:(BOOL)arg1 queue:(id)arg2 block:(id)arg3 ;
-(void)pause;
-(void)resume;
-(void)dealloc;


@end


#endif