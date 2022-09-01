// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef IROMOATJSUPDATETIMER_H
#define IROMOATJSUPDATETIMER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface IROMoatJSUpdateTimer : NSObject

@property (retain) NSTimer *viewabilityTimer; // ivar: _viewabilityTimer
@property (retain) NSTimer *metadataTimer; // ivar: _metadataTimer
@property (retain) NSHashTable *setupNeededBridges; // ivar: _setupNeededBridges
@property (retain) NSHashTable *activeTrackers; // ivar: _activeTrackers
@property CGFloat viewabilityTimerDuration; // ivar: _viewabilityTimerDuration


-(id)init;
-(void)addSetupNeededBridge:(id)arg0 ;
-(void)removeSetupNeededBridge:(id)arg0 ;
-(void)addActiveTracker:(id)arg0 ;
-(void)removeActiveTracker:(id)arg0 ;
-(void)startMetadataTimer;
-(void)startViewabilityTimer;
-(void)metadataLoopEnded:(id)arg0 ;
-(void)viewabilityLoopEnded:(id)arg0 ;
-(void)dealloc;
+(id)sharedJSUpdateTimer;


@end


#endif