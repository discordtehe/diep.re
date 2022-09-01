// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADOMIDLIGHTJSEXECUTOR_H
#define GADOMIDLIGHTJSEXECUTOR_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>

@class GADOMIDJSTimer;
@class GADOMIDJSNetworkBridge;
@protocol GADOMIDJSExecutor;
@protocol GADOMIDJSInvoker;

@interface GADOMIDLightJSExecutor : NSObject <GADOMIDJSExecutor, GADOMIDJSInvoker>



@property (readonly, nonatomic) JSContext *jsContext; // ivar: _jsContext
@property (readonly, nonatomic) GADOMIDJSTimer *timer; // ivar: _timer
@property (readonly, nonatomic) GADOMIDJSNetworkBridge *networkBridge; // ivar: _networkBridge
@property (readonly, nonatomic) NSObject<OS_dispatch_queue> *dispatchQueue; // ivar: _dispatchQueue
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) BOOL supportBackgroundThread;
@property (readonly, nonatomic) id *jsEnvironment;


-(id)initWithTimer:(id)arg0 networkBridge:(id)arg1 ;
-(void)injectJavaScriptFromString:(id)arg0 ;
-(void)invokeCallback:(id)arg0 ;
-(void)invokeCallback:(id)arg0 argument:(id)arg1 ;
-(void)invokeScript:(id)arg0 ;
+(id)lightJSExecutor;


@end


#endif