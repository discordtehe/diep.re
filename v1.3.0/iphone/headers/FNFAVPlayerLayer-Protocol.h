// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol FNFAVPlayerLayer

@property (retain, nonatomic) NSObject<FNFAVPlayer> *player;
@property (readonly, nonatomic, getter=isReadyForDisplay) BOOL readyForDisplay;
@property (readonly, nonatomic) CGSize presentationSize;
@property (copy, nonatomic) NSString *videoGravity;

-(id)player;
-(void)setPlayer:(id)arg0 ;
-(BOOL)isReadyForDisplay;
-(struct CGSize )presentationSize;
-(id)videoGravity;
-(void)setVideoGravity:(id)arg0 ;

@end

