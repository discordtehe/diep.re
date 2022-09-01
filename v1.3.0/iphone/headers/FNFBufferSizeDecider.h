// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FNFBUFFERSIZEDECIDER_H
#define FNFBUFFERSIZEDECIDER_H

@protocol FNFBandwidthProvider;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol FNFTimeLoadedDelegate;

@interface FNFBufferSizeDecider : NSObject {
    CGFloat _fetchBufferSizeInSeconds;
    CGFloat _defaultFetchBufferSizeInSeconds;
    CGFloat _fetchMultiplier;
    CGFloat _unstallMultiplier;
    CGFloat _unstallBufferSizeInSeconds;
    CGFloat _stallBufferSizeInSeconds;
    CGFloat _firstUnstallBufferSizeInSeconds;
    CGFloat _currentUnStallBufferSize;
    BOOL _dynamicUnstallBufferEnabled;
    CGFloat _unstallBufferSizeForExcellentNetwork;
    CGFloat _unstallBufferSizeForGoodNetwork;
    CGFloat _unstallBufferSizeForModerateNetwork;
    CGFloat _unstallBufferSizeForPoorNetwork;
    CGFloat _unstallBufferSizeForUnknownNetwork;
    CGFloat _furthestTimeLoadedInSeconds;
}


@property (weak, nonatomic) NSObject<FNFTimeLoadedDelegate> *delegate; // ivar: _delegate
@property (readonly, copy, nonatomic) NSArray *loadedTimeRanges; // ivar: _loadedTimeRanges
@property (nonatomic) ? playbackTime; // ivar: _playbackTime
@property (nonatomic) ? timeAfterSeek; // ivar: _timeAfterSeek
@property (readonly, nonatomic) CGFloat firstFetchSizeInSeconds; // ivar: _firstFetchSizeInSeconds
@property (retain, nonatomic) NSObject<FNFBandwidthProvider> *bandwidthProvider; // ivar: _bandwidthProvider


-(id)initWithConfig:(struct ? )arg0 ;
-(id)description;
-(struct ? )timeLoaded;
-(float)timeLoadedInSeconds;
-(float)timeLoadedInSecondsForTrack:(NSInteger)arg0 ;
-(void)requestTimeLoadedUpdate;
-(BOOL)updateTimeLoadedWithLoadedVideoTime:(struct ? )arg0 videoFullyDownloaded:(BOOL)arg1 ;
-(BOOL)updateTimeLoadedWithLoadedAudioTime:(struct ? )arg0 audioFullyDownloaded:(BOOL)arg1 ;
-(BOOL)updateTimeLoadedWithLoadedVideoTime:(struct ? )arg0 videoFullyDownloaded:(BOOL)arg1 loadedAudioTime:(struct ? )arg2 audioFullyDownloaded:(BOOL)arg3 ;
-(CGFloat)calUnstallBufferBasedOnConnection;
-(BOOL)shouldStall;
-(BOOL)shouldUnstallWithPauseReason:(int)arg0 ;
-(BOOL)shouldFetch;
-(BOOL)shouldFetchForTrack:(NSInteger)arg0 ;
-(float)timeToLoadInSeconds;
-(struct ? )addFetchBufferToTime:(struct ? )arg0 ;
-(BOOL)hasLoadedTime:(struct ? )arg0 ;
-(BOOL)_updateTimeLoaded:(struct ? )arg0 fullyLoaded:(BOOL)arg1 ;
-(CGFloat)currentUnstallBuffer;
-(CGFloat)currentFetchBuffer;


@end


#endif