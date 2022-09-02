// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCOLONY_INTERNALAVIDADSESSION_H
#define ADCOLONY_INTERNALAVIDADSESSION_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class AdColony_InternalAvidAdSessionContext;
@class AdColony_AvidDeferredAdSessionListenerImpl;
@class AdColony_ExternalAvidAdSessionContext;
@class AdColony_AvidEventDispatcher;
@class AdColony_AvidObstructionsWhiteList;
@class AdColony_AvidBridge;
@protocol AdColony_AvidEventDispatcherDelegate;
@protocol AdColony_AvidBridgeDelegate;
@protocol AdColony_AvidDeferredAdSessionListener;
@protocol AdColony_InternalAvidAdSessionDelegate;

@interface AdColony_InternalAvidAdSession : NSObject <AdColony_AvidEventDispatcherDelegate, AdColony_AvidBridgeDelegate>

 {
    AdColony_InternalAvidAdSessionContext *_internalContext;
}


@property (retain, nonatomic) AdColony_AvidDeferredAdSessionListenerImpl *_avidDeferredAdSessionListener; // ivar: __avidDeferredAdSessionListener
@property (nonatomic) BOOL onEndCalled; // ivar: _onEndCalled
@property (nonatomic) BOOL isActive; // ivar: _isActive
@property (nonatomic) BOOL isReady; // ivar: _isReady
@property (readonly, nonatomic) NSString *avidAdSessionId;
@property (readonly, weak, nonatomic) UIView *view; // ivar: _view
@property (readonly, nonatomic) BOOL isEmpty;
@property (readonly, nonatomic) AdColony_ExternalAvidAdSessionContext *avidAdSessionContext;
@property (readonly, nonatomic) NSObject<AdColony_AvidDeferredAdSessionListener> *avidDeferredAdSessionListener;
@property (weak, nonatomic) NSObject<AdColony_InternalAvidAdSessionDelegate> *delegate; // ivar: _delegate
@property (retain, nonatomic) AdColony_AvidEventDispatcher *eventDispatcher; // ivar: _eventDispatcher
@property (readonly, nonatomic) AdColony_AvidObstructionsWhiteList *obstructionsWhiteList; // ivar: _obstructionsWhiteList
@property (readonly, nonatomic) AdColony_AvidBridge *avidBridge; // ivar: _avidBridge
@property (readonly, nonatomic) CGFloat lastUpdate; // ivar: _lastUpdate
@property (readonly, nonatomic) NSUInteger adState; // ivar: _adState
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithId:(id)arg0 context:(id)arg1 ;
-(void)checkAccessToDeferredAdSessionListener;
-(void)throwDeferredAdSessionListenerAccessedOnNonDeferredSession;
-(void)registerAdView:(id)arg0 ;
-(void)unregisterAdView:(id)arg0 ;
-(BOOL)doesManageView:(id)arg0 ;
-(void)onStart;
-(void)onEnd;
-(void)cleanupViewState;
-(void)onViewRegistered;
-(void)onViewUnregistered;
-(void)setAppState:(NSInteger)arg0 ;
-(void)publishNativeViewStateWithCommand:(id)arg0 timestamp:(CGFloat)arg1 ;
-(void)publishEmptyNativeViewStateWithCommand:(id)arg0 timestamp:(CGFloat)arg1 ;
-(void)updateIsActiveIfNeeded;
-(void)publishReadyEvent;
-(id)makeDeferredAdSessionListener;
-(void)eventDispatcher:(id)arg0 didPushEvent:(id)arg1 ;
-(BOOL)eventDispatcherShouldBufferEvent:(id)arg0 ;
-(void)assertSessionIsNotClosed;
-(void)onViewChanged;
+(id)avidAdSessionWithId:(id)arg0 context:(id)arg1 ;
+(id)sessionType;
+(id)mediaType;


@end


#endif