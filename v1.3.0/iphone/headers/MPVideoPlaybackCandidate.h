// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPVIDEOPLAYBACKCANDIDATE_H
#define MPVIDEOPLAYBACKCANDIDATE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class MPVASTLinearAd;

@interface MPVideoPlaybackCandidate : NSObject

@property (retain, nonatomic) MPVASTLinearAd *linearAd; // ivar: _linearAd
@property (retain, nonatomic) NSArray *errorURLs; // ivar: _errorURLs
@property (retain, nonatomic) NSArray *impressionURLs; // ivar: _impressionURLs
@property (nonatomic) CGFloat minimumViewabilityTimeInterval; // ivar: _minimumViewabilityTimeInterval
@property (nonatomic) CGFloat minimumFractionOfVideoVisible; // ivar: _minimumFractionOfVideoVisible
@property (retain, nonatomic) NSURL *viewabilityTrackingURL; // ivar: _viewabilityTrackingURL




@end


#endif