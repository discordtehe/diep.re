// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef IROMOATBRIDGE_H
#define IROMOATBRIDGE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface IROMoatBridge : NSObject

@property BOOL beganBridgeInitialization; // ivar: _beganBridgeInitialization
@property (retain) NSMutableArray *pendingJSCommands; // ivar: _pendingJSCommands
@property (retain) NSHashTable *trackers; // ivar: _trackers
@property (nonatomic) int hasNativeAds; // ivar: _hasNativeAds
@property (retain, nonatomic) NSDate *creationTime; // ivar: _creationTime
@property BOOL webViewLoaded; // ivar: _webViewLoaded
@property (retain) NSHashTable *trackersWithNewAdRequested; // ivar: _trackersWithNewAdRequested
@property (retain) NSMutableArray *trackersWithStartRequested; // ivar: _trackersWithStartRequested


-(id)initWithWebView:(id)arg0 forNativeAds:(BOOL)arg1 ;
-(void)addTracker:(id)arg0 ;
-(void)startTrackingImpression:(id)arg0 ;
-(void)stopTrackingImpression:(id)arg0 ;
-(void)webViewFinishedLoading;
-(void)sendUserInteractionEvent:(id)arg0 ;
-(id)getBasicMetadata;
-(id)getMetadata;
-(id)getJSEnvString;
-(void)markMoatActive;
-(void)markNewAd:(id)arg0 ;
-(void)markImpressionStartForTracker:(id)arg0 ;
-(void)markImpressionEndForTracker:(id)arg0 ;
-(void)checkAndSendJS:(id)arg0 ;
-(void)handleJSResponse:(id)arg0 ;
-(void)sendViewabilityInfo:(id)arg0 ;
-(void)resendMetadata:(id)arg0 ;
-(void)stopJSLoopNotifications;
-(void)stopMetadataLoopNotifications;
-(void)stopViewabilityLoopNotifications;
-(void)dealloc;
+(void)insertLocationIntoRectsJSONDict:(id)arg0 ;
+(id)getLocationJSONDict;


@end


#endif