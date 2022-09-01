// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol FNFPlayerAudioDecoder


-(void)setAudioStreamBasicDescription:(struct AudioStreamBasicDescription )arg0 extraParameters:(id)arg1 errorCallback:(id)arg2 ;
-(BOOL)decodeToBuffer:(struct AudioQueueBuffer *)arg0 frame:(struct FNFFrameMetadata )arg1 frameData:(char *)arg2 ;
-(void)reset;

@end

