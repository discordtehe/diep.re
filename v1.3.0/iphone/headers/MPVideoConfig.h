// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPVIDEOCONFIG_H
#define MPVIDEOCONFIG_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface MPVideoConfig : NSObject

@property (retain, nonatomic) NSURL *mediaURL; // ivar: _mediaURL
@property (retain, nonatomic) NSURL *clickThroughURL; // ivar: _clickThroughURL
@property (retain, nonatomic) NSArray *clickTrackingURLs; // ivar: _clickTrackingURLs
@property (retain, nonatomic) NSArray *errorURLs; // ivar: _errorURLs
@property (retain, nonatomic) NSArray *impressionURLs; // ivar: _impressionURLs
@property (retain, nonatomic) NSArray *startTrackers; // ivar: _startTrackers
@property (retain, nonatomic) NSArray *firstQuartileTrackers; // ivar: _firstQuartileTrackers
@property (retain, nonatomic) NSArray *midpointTrackers; // ivar: _midpointTrackers
@property (retain, nonatomic) NSArray *thirdQuartileTrackers; // ivar: _thirdQuartileTrackers
@property (retain, nonatomic) NSArray *completionTrackers; // ivar: _completionTrackers
@property (retain, nonatomic) NSArray *muteTrackers; // ivar: _muteTrackers
@property (retain, nonatomic) NSArray *unmuteTrackers; // ivar: _unmuteTrackers
@property (retain, nonatomic) NSArray *pauseTrackers; // ivar: _pauseTrackers
@property (retain, nonatomic) NSArray *rewindTrackers; // ivar: _rewindTrackers
@property (retain, nonatomic) NSArray *resumeTrackers; // ivar: _resumeTrackers
@property (retain, nonatomic) NSArray *fullscreenTrackers; // ivar: _fullscreenTrackers
@property (retain, nonatomic) NSArray *exitFullscreenTrackers; // ivar: _exitFullscreenTrackers
@property (retain, nonatomic) NSArray *expandTrackers; // ivar: _expandTrackers
@property (retain, nonatomic) NSArray *collapseTrackers; // ivar: _collapseTrackers
@property (retain, nonatomic) NSArray *acceptInvitationLinearTrackers; // ivar: _acceptInvitationLinearTrackers
@property (retain, nonatomic) NSArray *closeLinearTrackers; // ivar: _closeLinearTrackers
@property (retain, nonatomic) NSArray *skipTrackers; // ivar: _skipTrackers
@property (retain, nonatomic) NSArray *otherProgressTrackers; // ivar: _otherProgressTrackers
@property (readonly, nonatomic) NSArray *creativeViewTrackers; // ivar: _creativeViewTrackers
@property (readonly, nonatomic) CGFloat minimumViewabilityTimeInterval; // ivar: _minimumViewabilityTimeInterval
@property (readonly, nonatomic) CGFloat minimumFractionOfVideoVisible; // ivar: _minimumFractionOfVideoVisible
@property (readonly, nonatomic) NSURL *viewabilityTrackingURL; // ivar: _viewabilityTrackingURL


-(id)initWithVASTResponse:(id)arg0 additionalTrackers:(id)arg1 ;
-(void)commonInit:(id)arg0 additionalTrackers:(id)arg1 ;
-(id)playbackCandidatesFromVASTResponse:(id)arg0 ;
-(id)trackingEventsFromWrapper:(id)arg0 ;
-(id)clickTrackingURLsFromWrapper:(id)arg0 ;
-(id)customClickURLsFromWrapper:(id)arg0 ;
-(id)industryIconsFromWrapper:(id)arg0 ;
-(id)extensionFromInlineAd:(id)arg0 forKey:(id)arg1 ;
-(id)firstObjectForKey:(id)arg0 inDictionary:(id)arg1 ;
-(id)trackersByMergingOriginalTrackers:(id)arg0 additionalTrackers:(id)arg1 name:(id)arg2 ;
-(id)dictionaryByMergingTrackingDictionaries:(id)arg0 ;


@end


#endif