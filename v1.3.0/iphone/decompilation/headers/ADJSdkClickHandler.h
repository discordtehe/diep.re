// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADJSDKCLICKHANDLER_H
#define ADJSDKCLICKHANDLER_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class ADJBackoffStrategy;
@protocol ADJSdkClickHandler;
@protocol ADJLogger;
@protocol ADJActivityHandler;

@interface ADJSdkClickHandler : NSObject <ADJSdkClickHandler>



@property (retain, nonatomic) NSObject<OS_dispatch_queue> *internalQueue; // ivar: _internalQueue
@property (weak, nonatomic) NSObject<ADJLogger> *logger; // ivar: _logger
@property (retain, nonatomic) ADJBackoffStrategy *backoffStrategy; // ivar: _backoffStrategy
@property (nonatomic) BOOL paused; // ivar: _paused
@property (retain, nonatomic) NSMutableArray *packageQueue; // ivar: _packageQueue
@property (retain, nonatomic) NSURL *baseUrl; // ivar: _baseUrl
@property (weak, nonatomic) NSObject<ADJActivityHandler> *activityHandler; // ivar: _activityHandler


-(id)initWithActivityHandler:(id)arg0 startsSending:(BOOL)arg1 ;
-(void)pauseSending;
-(void)resumeSending;
-(void)sendSdkClick:(id)arg0 ;
-(void)sendNextSdkClick;
-(void)teardown;
-(void)initI:(id)arg0 activityHandler:(id)arg1 startsSending:(BOOL)arg2 ;
-(void)sendSdkClickI:(id)arg0 sdkClickPackage:(id)arg1 ;
-(void)sendNextSdkClickI:(id)arg0 ;
+(id)handlerWithActivityHandler:(id)arg0 startsSending:(BOOL)arg1 ;


@end


#endif