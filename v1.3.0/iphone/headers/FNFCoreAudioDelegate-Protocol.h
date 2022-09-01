// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol FNFCoreAudioDelegate


-(void)audioQueueDidOutputForBuffer:(struct AudioQueueBuffer *)arg0 ;
-(void)audioQueueDidError:(id)arg0 withStatus:(int)arg1 ;
-(void)audioQueueDidChangeRunning:(BOOL)arg0 ;

@end

