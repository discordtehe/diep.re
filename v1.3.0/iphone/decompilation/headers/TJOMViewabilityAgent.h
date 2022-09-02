// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJOMVIEWABILITYAGENT_H
#define TJOMVIEWABILITYAGENT_H


#import <Foundation/Foundation.h>

@class OMIDtapjoyAdSession;
@class OMIDtapjoyVideoEvents;
@class OMIDtapjoyAdEvents;
@class TJCUIWebPageView;

@interface TJOMViewabilityAgent : NSObject

@property (retain, nonatomic) OMIDtapjoyAdSession *omidSession; // ivar: _omidSession
@property (retain, nonatomic) OMIDtapjoyVideoEvents *omidVideoEvents; // ivar: _omidVideoEvents
@property (retain, nonatomic) OMIDtapjoyAdEvents *omidAdEvents; // ivar: _omidAdEvents
@property (retain, nonatomic) TJCUIWebPageView *adView; // ivar: _adView
@property (retain, nonatomic) NSNumber *videoLength; // ivar: _videoLength


-(BOOL)isOMInitialized;
-(void)initViewabilityTracker:(id)arg0 callback:(id)arg1 ;
-(void)parseResources:(id)arg0 callback:(id)arg1 ;
-(BOOL)createOmidSession:(id)arg0 ;
-(void)getOmidJSResource:(id)arg0 completion:(id)arg1 ;
-(void)fetchJSFromCache:(id)arg0 error:(id)arg1 ;
-(void)startViewabilityTracker:(id)arg0 callback:(id)arg1 ;
-(void)triggerViewabilityEvent:(id)arg0 callback:(id)arg1 ;
-(void)rendered;
-(void)bufferStart;
-(void)bufferFinish;
-(void)start;
-(void)firstQuartile;
-(void)midpoint;
-(void)thirdQuartile;
-(void)complete;
-(void)paused;
-(void)playing;
-(void)skipped;
-(void)volumeChanged;
+(id)sharedInstance;


@end


#endif