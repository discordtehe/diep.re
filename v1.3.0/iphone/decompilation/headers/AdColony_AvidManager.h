// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCOLONY_AVIDMANAGER_H
#define ADCOLONY_AVIDMANAGER_H


#import <Foundation/Foundation.h>

@protocol AdColony_AvidProviderDelegate;
@protocol AdColony_AvidStateWatcherDelegate;

@interface AdColony_AvidManager : NSObject <AdColony_AvidProviderDelegate, AdColony_AvidStateWatcherDelegate>



@property (readonly, nonatomic) BOOL isActive;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)registerAvidAdSession:(id)arg0 withInternalAvidAdSession:(id)arg1 ;
-(id)findAvidAdSessionById:(id)arg0 ;
-(id)findInternalAvidAdSessionById:(id)arg0 ;
-(void)start;
-(void)stop;
-(void)notifyAvidReady;
-(void)onAvidReady;
-(BOOL)shouldLoadAvid;
-(void)onAppStateChanged:(BOOL)arg0 ;
-(void)onSessionRegistryIsEmptyChanged:(id)arg0 ;
-(void)onSessionRegistryHasReadySessionsChanged:(id)arg0 ;
+(id)getInstance;


@end


#endif