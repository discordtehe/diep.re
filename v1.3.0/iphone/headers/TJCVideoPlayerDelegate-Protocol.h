// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol TJCVideoPlayerDelegate


-(void)videoReady:(CGFloat)arg0 width:(int)arg1 height:(int)arg2 ;
-(void)videoDidStart;
-(void)videoProgress:(CGFloat)arg0 ;
-(void)videoDidPause:(CGFloat)arg0 ;
-(void)videoDidComplete;
-(void)videoInfo;
-(void)videoError:(id)arg0 ;

@end

