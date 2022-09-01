// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol FBAdDisplayable

@property (nonatomic) BOOL canPlayVideo;
@property (readonly, nonatomic) ? currentTime;

-(void)loadAdFromDataModel:(id)arg0 placementDefinition:(id)arg1 ;
-(void)loadAdFromDataModel:(id)arg0 placementDefinition:(id)arg1 carouselPageNumber:(id)arg2 totalPages:(id)arg3 ;
-(void)showAd;
-(void)destroyAd;
-(void)setPlaying:(BOOL)arg0 forced:(BOOL)arg1 ;
-(void)configureVolume:(CGFloat)arg0 ;
-(BOOL)canPlayVideo;
-(void)setCanPlayVideo:(BOOL)arg0 ;
-(struct ? )currentTime;

@end

