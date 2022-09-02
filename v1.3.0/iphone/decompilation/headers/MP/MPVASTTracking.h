// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPVASTTRACKING_H
#define MPVASTTRACKING_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class VASTEventTracker;
@class MOPUBNativeVideoImpressionAgent;
@class MPVideoConfig;

@interface MPVASTTracking : NSObject

@property (retain, nonatomic) VASTEventTracker *errorTracker; // ivar: _errorTracker
@property (retain, nonatomic) VASTEventTracker *impressionTracker; // ivar: _impressionTracker
@property (retain, nonatomic) VASTEventTracker *clickTracker; // ivar: _clickTracker
@property (retain, nonatomic) VASTEventTracker *customViewabilityTracker; // ivar: _customViewabilityTracker
@property (retain, nonatomic) VASTEventTracker *startTracker; // ivar: _startTracker
@property (retain, nonatomic) VASTEventTracker *firstQuartileTracker; // ivar: _firstQuartileTracker
@property (retain, nonatomic) VASTEventTracker *midPointTracker; // ivar: _midPointTracker
@property (retain, nonatomic) VASTEventTracker *thirdQuartileTracker; // ivar: _thirdQuartileTracker
@property (retain, nonatomic) VASTEventTracker *completionTracker; // ivar: _completionTracker
@property (retain, nonatomic) NSMutableArray *variableProgressTrackers; // ivar: _variableProgressTrackers
@property (retain, nonatomic) VASTEventTracker *muteTracker; // ivar: _muteTracker
@property (retain, nonatomic) VASTEventTracker *unmuteTracker; // ivar: _unmuteTracker
@property (retain, nonatomic) VASTEventTracker *pauseTracker; // ivar: _pauseTracker
@property (retain, nonatomic) VASTEventTracker *rewindTracker; // ivar: _rewindTracker
@property (retain, nonatomic) VASTEventTracker *resumeTracker; // ivar: _resumeTracker
@property (retain, nonatomic) VASTEventTracker *fullscreenTracker; // ivar: _fullscreenTracker
@property (retain, nonatomic) VASTEventTracker *exitFullscreenTracker; // ivar: _exitFullscreenTracker
@property (retain, nonatomic) VASTEventTracker *expandTracker; // ivar: _expandTracker
@property (retain, nonatomic) VASTEventTracker *collapseTracker; // ivar: _collapseTracker
@property (retain, nonatomic) MOPUBNativeVideoImpressionAgent *customViewabilityTrackingAgent; // ivar: _customViewabilityTrackingAgent
@property (readonly, nonatomic) MPVideoConfig *videoConfig; // ivar: _videoConfig
@property (nonatomic) CGFloat videoDuration; // ivar: _videoDuration


-(id)initWithMPVideoConfig:(id)arg0 videoView:(id)arg1 ;
-(void)handleVideoEvent:(NSUInteger)arg0 videoTimeOffset:(CGFloat)arg1 ;
-(void)handleProgressTrackers:(CGFloat)arg0 ;
-(void)cleanAndSendTrackingEvents:(id)arg0 timeOffset:(CGFloat)arg1 ;
-(void)handleNewVideoView:(id)arg0 ;


@end


#endif