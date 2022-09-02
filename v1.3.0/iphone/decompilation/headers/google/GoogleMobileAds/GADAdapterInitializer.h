// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADADAPTERINITIALIZER_H
#define GADADAPTERINITIALIZER_H

@protocol OS_dispatch_queue, OS_dispatch_group;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADInitializationStatus;
@class GADEventContext;

@interface GADAdapterInitializer : NSObject {
    NSObject<OS_dispatch_queue> *_lockQueue;
    GADInitializationStatus *_status;
    NSObject<OS_dispatch_group> *_completionGroup;
    NSDate *_startTimestamp;
    id *_configurationObserver;
    GADEventContext *_context;
}


@property (readonly) GADInitializationStatus *status;


-(id)init;
-(CGFloat)timeIntervalSinceInitializationStart;
-(void)setState:(NSInteger)arg0 description:(id)arg1 updateLatency:(BOOL)arg2 forAdapter:(id)arg3 ;
-(void)updateDescription:(id)arg0 forAdapter:(id)arg1 includingLatency:(BOOL)arg2 ;
-(void)adapterDidBecomeReady:(id)arg0 ;
-(void)fetchSettings;
-(Class)adapterForName:(id)arg0 ;
-(id)setUpOperationForAdapter:(id)arg0 data:(id)arg1 ;
-(void)initializeAdaptersWithSettings:(id)arg0 ;
-(void)startWithCompletionHandler:(id)arg0 ;
+(id)sharedInstance;


@end


#endif