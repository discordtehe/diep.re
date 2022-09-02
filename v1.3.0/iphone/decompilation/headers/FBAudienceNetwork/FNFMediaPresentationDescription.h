// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FNFMEDIAPRESENTATIONDESCRIPTION_H
#define FNFMEDIAPRESENTATIONDESCRIPTION_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface FNFMediaPresentationDescription : NSObject

@property (readonly, nonatomic) BOOL isDynamic; // ivar: _isDynamic
@property (readonly, nonatomic) BOOL isFragmented; // ivar: _isFragmented
@property (readonly, nonatomic) BOOL isPredictive; // ivar: _isPredictive
@property (readonly, nonatomic) BOOL isManifestService; // ivar: _isManifestService
@property (readonly, nonatomic) BOOL containsUsingASRCaptions; // ivar: _containsUsingASRCaptions
@property (readonly, nonatomic) BOOL containsCompleteTimeline; // ivar: _containsCompleteTimeline
@property (readonly, nonatomic) unsigned int durationMS; // ivar: _durationMS
@property (readonly, nonatomic) NSInteger videoType; // ivar: _videoType
@property (readonly, nonatomic) CGFloat publishFrameTimeMS; // ivar: _publishFrameTimeMS
@property (readonly, copy, nonatomic) NSString *mpdAccessibilityDescription; // ivar: _mpdAccessibilityDescription
@property (readonly, copy, nonatomic) NSDate *availabilityEndTime; // ivar: _availabilityEndTime
@property (readonly, copy, nonatomic) NSDate *publishTime; // ivar: _publishTime
@property (readonly, nonatomic) NSInteger firstAvTimeMS; // ivar: _firstAvTimeMS
@property (readonly, nonatomic) NSInteger currentServerTimeMs; // ivar: _currentServerTimeMs
@property (readonly, nonatomic) NSInteger lastVideoFrameTimeMs; // ivar: _lastVideoFrameTimeMs
@property (readonly, copy, nonatomic) NSString *loapStreamId; // ivar: _loapStreamId
@property (readonly, copy, nonatomic) NSString *loapStreamType; // ivar: _loapStreamType
@property (readonly, copy, nonatomic) NSArray *videoTracks; // ivar: _videoTracks
@property (readonly, copy, nonatomic) NSArray *audioTracks; // ivar: _audioTracks


-(id)initWithAudioTracks:(id)arg0 videoTracks:(id)arg1 isDynamic:(BOOL)arg2 isFragmented:(BOOL)arg3 durationMS:(unsigned int)arg4 videoType:(NSInteger)arg5 mpdAccessibilityDescription:(id)arg6 publishFrameTime:(NSUInteger)arg7 availabilityEndTime:(id)arg8 publishTime:(id)arg9 firstAvTimeMS:(NSInteger)arg10 currentServerTimeMs:(NSInteger)arg11 lastVideoFrameTimeMs:(NSInteger)arg12 isPredictive:(BOOL)arg13 isManifestService:(BOOL)arg14 containsUsingASRCaptions:(BOOL)arg15 containsCompleteTimeline:(BOOL)arg16 loapStreamId:(id)arg17 loapStreamType:(id)arg18 ;
+(id)presentationDescriptionWithContentsOfXml:(id)arg0 mpdUrl:(id)arg1 error:(*id)arg2 ;
+(id)urlFromBase:(id)arg0 suffix:(id)arg1 ;
+(struct _NSRange )rangeFromStartToEndString:(id)arg0 ;
+(id)getPssh:(struct node *)arg0 ;
+(id)getKeyId:(struct node *)arg0 ;
+(id)prettyPrintXML:(id)arg0 ;


@end


#endif