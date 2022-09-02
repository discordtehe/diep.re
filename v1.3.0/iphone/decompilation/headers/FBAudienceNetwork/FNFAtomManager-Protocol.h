// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol FNFAtomManager


-(void)setDelegate:(id)arg0 ;
-(void)parseAtomForTrack:(NSInteger)arg0 ;
-(NSUInteger)moovAtomSize;
-(BOOL)moovAtomSizeParsedFromFile;
-(struct ? )currentVideoPts;
-(struct ? )videoTrackDuration;
-(BOOL)parsedHeaderForTrack:(NSInteger)arg0 ;
-(BOOL)parsedHeaders;
-(struct ? )timeLoadedForOffset:(NSUInteger)arg0 track:(NSInteger)arg1 ;
-(BOOL)offsetIsAtLeastLargestOffset:(NSUInteger)arg0 track:(NSInteger)arg1 ;
-(id)dataBlockDistributorForTrack:(NSInteger)arg0 ;
-(void)createNewDataBlockDistributors;
-(NSUInteger)offsetForTimeInSeconds:(float)arg0 track:(NSInteger)arg1 ;
-(BOOL)shouldResetAssetToBeginning;
-(struct FNFSeekStatus )seekToPosition:(struct ? )arg0 ;
-(BOOL)trackHasMoreFrames:(NSInteger)arg0 isFullyDownloaded:(BOOL)arg1 ;
-(BOOL)containsAudio;
-(id)audioCodec;
-(struct opaqueCMFormatDescription *)formatDesc;
-(struct AudioStreamBasicDescription )asbd;
-(id)audioStreamExtraParameters;
-(struct ? )duration;
-(struct FNFFrameMetadata )currentFrameMetadataForTrack:(NSInteger)arg0 ;
-(char *)currentFrameDataForTrack:(NSInteger)arg0 ;
-(void)advanceFrameForTrack:(NSInteger)arg0 ;
-(struct ? )nextAbsoluteAudioTime;
-(struct CGAffineTransform )preferredTransform;
-(NSUInteger)timescale;
-(NSUInteger)currentOffsetForTrack:(NSInteger)arg0 ;

@end

