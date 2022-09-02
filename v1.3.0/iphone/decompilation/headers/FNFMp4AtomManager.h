// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FNFMP4ATOMMANAGER_H
#define FNFMP4ATOMMANAGER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class FNFDataBlockDistributor;
@protocol FNFAtomManager;
@protocol FNFAtomManagerDelegate;

@interface FNFMp4AtomManager : NSObject <FNFAtomManager>

 {
    id<FNFAtomManagerDelegate> *_delegate;
    FNFDataBlockDistributor *_dataBlockDistributor;
    FNFMP4MoovAtomCompressed _moovAtom;
    *FNFMp4FrameMetadataCompressor _frames;
    NSUInteger _moovAtomSize;
    BOOL _moovAtomSizeParsedFromFile;
    BOOL _moovAtomParsed;
    BOOL _parsedHeader;
    ? _duration;
    *opaqueCMFormatDescription _formatDesc;
    AudioStreamBasicDescription _asbd;
    NSDictionary *_audioStreamExtraParameters;
    NSString *_audioCodec;
    int _trackId;
    unsigned int _timescale;
    CGAffineTransform _transform;
    BOOL _enableMp4AssetSeekingFix;
    BOOL _enableMp4AssetEditListSeekingFix;
    BOOL _enableMp4AssetRotationSupport;
    BOOL _enableHEVCSupport;
}




-(void)dealloc;
-(id)initWithMoovAtomSize:(NSUInteger)arg0 enableMp4AssetSeekingFix:(BOOL)arg1 enableMp4AssetEditListSeekingFix:(BOOL)arg2 enableMp4AssetRotationSupport:(BOOL)arg3 enableHEVCSupport:(BOOL)arg4 ;
-(void)setDelegate:(id)arg0 ;
-(id)description;
-(void)parseAtomForTrack:(NSInteger)arg0 ;
-(void)createNewDataBlockDistributors;
-(id)dataBlockDistributorForTrack:(NSInteger)arg0 ;
-(BOOL)shouldResetAssetToBeginning;
-(struct FNFSeekStatus )seekToPosition:(struct ? )arg0 ;
-(struct FNFFrameMetadata )currentFrameMetadataForTrack:(NSInteger)arg0 ;
-(char *)currentFrameDataForTrack:(NSInteger)arg0 ;
-(BOOL)containsAudio;
-(id)audioCodec;
-(BOOL)trackHasMoreFrames:(NSInteger)arg0 isFullyDownloaded:(BOOL)arg1 ;
-(void)advanceFrameForTrack:(NSInteger)arg0 ;
-(struct ? )timeLoadedForOffset:(NSUInteger)arg0 track:(NSInteger)arg1 ;
-(BOOL)offsetIsAtLeastLargestOffset:(NSUInteger)arg0 track:(NSInteger)arg1 ;
-(NSUInteger)offsetForTimeInSeconds:(float)arg0 track:(NSInteger)arg1 ;
-(struct ? )currentVideoPts;
-(struct ? )videoTrackDuration;
-(struct ? )nextAbsoluteAudioTime;
-(struct opaqueCMFormatDescription *)formatDesc;
-(struct AudioStreamBasicDescription )asbd;
-(id)audioStreamExtraParameters;
-(struct ? )duration;
-(NSUInteger)moovAtomSize;
-(BOOL)moovAtomSizeParsedFromFile;
-(BOOL)parsedHeaderForTrack:(NSInteger)arg0 ;
-(BOOL)parsedHeaders;
-(void)_resetDataForSeekBack;
-(void)_setMoovAtomSizeFromFile:(NSUInteger)arg0 ;
-(int)_trackIdForTrackType:(int)arg0 ;
-(struct CGAffineTransform )preferredTransform;
-(NSUInteger)timescale;
-(NSUInteger)currentOffsetForTrack:(NSInteger)arg0 ;


@end


#endif