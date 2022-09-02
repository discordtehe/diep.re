// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADJPACKAGEHANDLER_H
#define ADJPACKAGEHANDLER_H

@protocol OS_dispatch_queue, OS_dispatch_semaphore;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class ADJBackoffStrategy;
@protocol ADJPackageHandler;
@protocol ADJRequestHandler;
@protocol ADJActivityHandler;
@protocol ADJLogger;

@interface ADJPackageHandler : NSObject <ADJPackageHandler>



@property (retain, nonatomic) NSObject<OS_dispatch_queue> *internalQueue; // ivar: _internalQueue
@property (retain, nonatomic) NSObject<OS_dispatch_semaphore> *sendingSemaphore; // ivar: _sendingSemaphore
@property (retain, nonatomic) NSObject<ADJRequestHandler> *requestHandler; // ivar: _requestHandler
@property (retain, nonatomic) NSMutableArray *packageQueue; // ivar: _packageQueue
@property (retain, nonatomic) ADJBackoffStrategy *backoffStrategy; // ivar: _backoffStrategy
@property (nonatomic) BOOL paused; // ivar: _paused
@property (weak, nonatomic) NSObject<ADJActivityHandler> *activityHandler; // ivar: _activityHandler
@property (weak, nonatomic) NSObject<ADJLogger> *logger; // ivar: _logger


-(id)initWithActivityHandler:(id)arg0 startsSending:(BOOL)arg1 ;
-(void)addPackage:(id)arg0 ;
-(void)sendFirstPackage;
-(void)sendNextPackage:(id)arg0 ;
-(void)closeFirstPackage:(id)arg0 activityPackage:(id)arg1 ;
-(void)pauseSending;
-(void)resumeSending;
-(void)updatePackages:(id)arg0 ;
-(void)teardown:(BOOL)arg0 ;
-(void)initI:(id)arg0 activityHandler:(id)arg1 startsSending:(BOOL)arg2 ;
-(void)addI:(id)arg0 package:(id)arg1 ;
-(void)sendFirstI:(id)arg0 ;
-(void)sendNextI:(id)arg0 ;
-(void)updatePackagesI:(id)arg0 sessionParameters:(id)arg1 ;
-(void)readPackageQueueI:(id)arg0 ;
-(void)writePackageQueueS:(id)arg0 ;
-(void)teardownPackageQueueS:(BOOL)arg0 ;
-(void)dealloc;
+(id)handlerWithActivityHandler:(id)arg0 startsSending:(BOOL)arg1 ;


@end


#endif