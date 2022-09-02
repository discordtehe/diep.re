// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef IROMOATANALYTICS_H
#define IROMOATANALYTICS_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class IROMoatWebViewAndBridge;

@interface IROMoatAnalytics : NSObject

@property (retain) NSMutableArray *completionBlocks; // ivar: _completionBlocks
@property BOOL initialized; // ivar: _initialized
@property BOOL webViewInitialized; // ivar: _webViewInitialized
@property BOOL locationServicesEnabled; // ivar: _locationServicesEnabled
@property BOOL IDFACollectionBlocked; // ivar: _IDFACollectionBlocked
@property (retain) IROMoatWebViewAndBridge *globalDisplayWebView; // ivar: _globalDisplayWebView
@property (retain) NSString *displayPartnerCode; // ivar: _displayPartnerCode
@property (retain) NSHashTable *trackedWebViews; // ivar: _trackedWebViews


-(id)init;
-(void)startWithOptions:(id)arg0 ;
-(void)start;
-(void)commonStart:(id)arg0 ;
-(void)initializeAppHooks:(id)arg0 ;
-(void)prepareNativeDisplayTracking:(id)arg0 ;
-(void)registerCompletionBlock:(id)arg0 ;
-(void)removeCompletionBlock:(id)arg0 ;
-(BOOL)areLocationServicesEnabled;
-(BOOL)isInitialized;
-(id)getBridge;
-(BOOL)addTrackedWebView:(id)arg0 ;
-(void)setDebug:(BOOL)arg0 ;
-(void)initializeDisplayWebView;
+(id)sharedInstance;


@end


#endif