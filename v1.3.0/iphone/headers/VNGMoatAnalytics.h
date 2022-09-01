// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VNGMOATANALYTICS_H
#define VNGMOATANALYTICS_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class VNGMoatWebViewAndBridge;

@interface VNGMoatAnalytics : NSObject

@property (retain) NSMutableArray *completionBlocks; // ivar: _completionBlocks
@property BOOL initialized; // ivar: _initialized
@property BOOL initializeDisplayWebViewCalled; // ivar: _initializeDisplayWebViewCalled
@property BOOL IDFACollectionBlocked; // ivar: _IDFACollectionBlocked
@property (retain) VNGMoatWebViewAndBridge *globalDisplayWebView; // ivar: _globalDisplayWebView
@property (retain) NSString *displayPartnerCode; // ivar: _displayPartnerCode
@property (retain) NSHashTable *trackedWebViews; // ivar: _trackedWebViews
@property (retain) NSMutableSet *retainedWebViewAndBridges; // ivar: _retainedWebViewAndBridges


-(id)init;
-(void)startWithOptions:(id)arg0 ;
-(void)start;
-(void)commonStart:(id)arg0 ;
-(void)initializeAppHooks:(id)arg0 ;
-(void)prepareNativeDisplayTracking:(id)arg0 ;
-(BOOL)prepareNativeDisplayTracking:(id)arg0 error:(*id)arg1 ;
-(void)registerCompletionBlock:(id)arg0 ;
-(void)removeCompletionBlock:(id)arg0 ;
-(BOOL)isInitialized;
-(id)getBridge;
-(BOOL)addTrackedWebView:(id)arg0 ;
-(void)addRetainedWebViewAndBridge:(id)arg0 ;
-(void)removeRetainedWebViewAndBridge:(id)arg0 ;
-(id)retrieveKeyWindow;
-(void)setDebug:(BOOL)arg0 ;
-(void)initializeDisplayWebView;
+(id)sharedInstance;


@end


#endif