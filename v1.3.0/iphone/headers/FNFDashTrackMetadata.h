// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FNFDASHTRACKMETADATA_H
#define FNFDASHTRACKMETADATA_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class FNFDashTrackEntryContainer;

@interface FNFDashTrackMetadata : NSObject {
    ? _resolutionMosPairs;
}


@property (readonly, copy, nonatomic) NSString *representationId; // ivar: _representationId
@property (readonly, nonatomic) unsigned int width; // ivar: _width
@property (readonly, nonatomic) unsigned int height; // ivar: _height
@property (readonly, nonatomic) unsigned int bandwidth; // ivar: _bandwidth
@property (readonly, copy, nonatomic) NSString *qualityLabel; // ivar: _qualityLabel
@property (readonly, copy, nonatomic) NSString *mimeType; // ivar: _mimeType
@property (readonly, copy, nonatomic) NSString *codecs; // ivar: _codecs
@property (readonly, copy, nonatomic) NSArray *abrPolicyTags; // ivar: _abrPolicyTags
@property (readonly, copy, nonatomic) NSString *playbackResolutionMos; // ivar: _playbackResolutionMos
@property (readonly, copy, nonatomic) NSURL *initializationUrl; // ivar: _initializationUrl
@property (readonly, copy, nonatomic) NSString *projection; // ivar: _projection
@property (readonly, copy, nonatomic) NSString *audioChannelConfiguration; // ivar: _audioChannelConfiguration
@property (readonly, copy, nonatomic) NSString *encodedInitData; // ivar: _encodedInitData
@property (readonly, nonatomic) _NSRange indexRange; // ivar: _indexRange
@property (readonly, nonatomic) _NSRange initializationRange; // ivar: _initializationRange
@property (readonly, nonatomic) _NSRange firstSegmentRange; // ivar: _firstSegmentRange
@property (readonly, nonatomic) _NSRange secondSegmentRange; // ivar: _secondSegmentRange
@property (readonly, nonatomic) unsigned int timelineDuration; // ivar: _timelineDuration
@property (readonly, copy, nonatomic) NSURL *mpdUrl; // ivar: _mpdUrl
@property (readonly, copy, nonatomic) FNFDashTrackEntryContainer *timelineEntries; // ivar: _timelineEntries
@property (readonly, copy, nonatomic) FNFDashTrackEntryContainer *predictiveTimelineEntries; // ivar: _predictiveTimelineEntries
@property (readonly, nonatomic) unsigned int timelineTimescale; // ivar: _timelineTimescale
@property (readonly, copy, nonatomic) NSString *predictiveMediaUrlTemplate; // ivar: _predictiveMediaUrlTemplate
@property (readonly, nonatomic) int predictiveMediaEndNumber; // ivar: _predictiveMediaEndNumber
@property (readonly, copy, nonatomic) NSString *pssh; // ivar: _pssh
@property (readonly, copy, nonatomic) NSString *keyId; // ivar: _keyId


-(id)initWithId:(id)arg0 width:(unsigned int)arg1 height:(unsigned int)arg2 bandwidth:(unsigned int)arg3 abrPolicyTags:(id)arg4 qualityLabel:(id)arg5 mimeType:(id)arg6 codecs:(id)arg7 initializationUrl:(id)arg8 projection:(id)arg9 audioChannelConfiguration:(id)arg10 indexRange:(struct _NSRange )arg11 initializationRange:(struct _NSRange )arg12 firstSegmentRange:(struct _NSRange )arg13 secondSegmentRange:(struct _NSRange )arg14 timelineTimescale:(unsigned int)arg15 timelineDuration:(unsigned int)arg16 timelineEntries:(id)arg17 predictiveTimelineEntries:(id)arg18 encodedInitData:(id)arg19 mpdUrl:(id)arg20 mediaUrlTemplate:(id)arg21 predictiveMediaUrlTemplate:(id)arg22 predictiveMediaEndNumber:(int)arg23 pssh:(id)arg24 keyId:(id)arg25 playbackResolutionMos:(id)arg26 ;
-(BOOL)containsABRPolicyTag:(id)arg0 ;
-(struct vector<std::__1::pair<double, double>, std::__1::allocator<std::__1::pair<double, double> > > )resolutionMosPairs;
+(id)segmentBaseMetadataWithId:(id)arg0 width:(unsigned int)arg1 height:(unsigned int)arg2 bandwidth:(unsigned int)arg3 abrPolicyTags:(id)arg4 qualityLabel:(id)arg5 mimeType:(id)arg6 codecs:(id)arg7 initializationUrl:(id)arg8 projection:(id)arg9 audioChannelConfiguration:(id)arg10 indexRange:(struct _NSRange )arg11 initializationRange:(struct _NSRange )arg12 firstSegmentRange:(struct _NSRange )arg13 secondSegmentRange:(struct _NSRange )arg14 pssh:(id)arg15 keyId:(id)arg16 playbackResolutionMos:(id)arg17 ;
+(id)segmentListMetadataWithId:(id)arg0 width:(unsigned int)arg1 height:(unsigned int)arg2 bandwidth:(unsigned int)arg3 abrPolicyTags:(id)arg4 qualityLabel:(id)arg5 mimeType:(id)arg6 codecs:(id)arg7 initializationUrl:(id)arg8 projection:(id)arg9 audioChannelConfiguration:(id)arg10 timelineTimescale:(unsigned int)arg11 timelineDuration:(unsigned int)arg12 timelineEntries:(id)arg13 pssh:(id)arg14 keyId:(id)arg15 playbackResolutionMos:(id)arg16 ;
+(id)segmentTemplateMetadataWithId:(id)arg0 width:(unsigned int)arg1 height:(unsigned int)arg2 bandwidth:(unsigned int)arg3 abrPolicyTags:(id)arg4 qualityLabel:(id)arg5 mimeType:(id)arg6 codecs:(id)arg7 initializationUrl:(id)arg8 projection:(id)arg9 audioChannelConfiguration:(id)arg10 timelineTimescale:(unsigned int)arg11 timelineEntries:(id)arg12 predictiveTimelineEntries:(id)arg13 encodedInitData:(id)arg14 mpdUrl:(id)arg15 mediaUrlTemplate:(id)arg16 predictiveMediaUrlTemplate:(id)arg17 predictiveMediaEndNumber:(int)arg18 pssh:(id)arg19 keyId:(id)arg20 playbackResolutionMos:(id)arg21 ;


@end


#endif