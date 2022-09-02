// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol GADVideoControlling


-(void)setMute:(BOOL)arg0 ;
-(BOOL)isMuted;
-(void)play;
-(void)pause;
-(void)stop;
-(void)setInitialStateWithConfigurations:(id)arg0 ;
-(BOOL)hasVideoContent;
-(CGFloat)aspectRatio;
-(BOOL)customControlsEnabled;
-(NSInteger)videoPlaybackState;
-(BOOL)clickToExpandEnabled;
-(CGFloat)duration;
-(CGFloat)currentTime;

@end

