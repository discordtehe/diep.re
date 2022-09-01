// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCNATIVELAYER_H
#define ADCNATIVELAYER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface ADCNativeLayer : NSObject

@property (nonatomic) BOOL downloadingController; // ivar: _downloadingController
@property (retain, nonatomic) NSTimer *controllerDownloadTimer; // ivar: _controllerDownloadTimer
@property (nonatomic) NSInteger controllerDownloadAttempts; // ivar: _controllerDownloadAttempts
@property (copy, nonatomic) id *controllerLoadCompletion; // ivar: _controllerLoadCompletion
@property (retain, nonatomic) NSMutableDictionary *modules; // ivar: _modules
@property (retain, nonatomic) NSMutableDictionary *typedHandlers; // ivar: _typedHandlers
@property (retain, nonatomic) NSMutableArray *outbound; // ivar: _outbound
@property (retain, nonatomic) NSMutableArray *messageSenders; // ivar: _messageSenders
@property (nonatomic) NSUInteger nativeMessageIDCounter; // ivar: _nativeMessageIDCounter
@property (nonatomic) NSUInteger dynamicModuleIDCounter; // ivar: _dynamicModuleIDCounter
@property (retain, nonatomic) NSLock *accessLock; // ivar: _accessLock
@property (nonatomic) int pauseCount; // ivar: _pauseCount


-(id)init;
-(void)registerHandlers;
-(void)loadControllerWithCompletion:(id)arg0 ;
-(void)loadController;
-(NSInteger)nextControllerDownload;
-(NSUInteger)nextDynamicModuleID;
-(id)moduleForIdentifier:(NSUInteger)arg0 ;
-(void)registerDynamicModule:(id)arg0 ;
-(void)unregisterDynamicModule:(id)arg0 ;
-(void)unregisterAllDynamicModules;
-(void)moduleUpdate;
-(NSUInteger)nextNativeMessageID;
-(void)addMessageSender:(id)arg0 ;
-(void)addTarget:(id)arg0 selector:(SEL)arg1 forMessageType:(id)arg2 ;
-(id)handlerForMessageType:(id)arg0 ;
-(void)dispatchMessages:(id)arg0 ;
-(void)dispatchMessage:(id)arg0 ;
-(void)sendMessage:(id)arg0 ;
-(void)broadcastMessage:(id)arg0 ;
-(void)onApplicationResignedActive;
-(void)onApplicationBecameActive;
+(id)sharedLayer;


@end


#endif