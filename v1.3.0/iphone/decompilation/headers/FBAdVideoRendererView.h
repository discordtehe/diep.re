// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADVIDEORENDERERVIEW_H
#define FBADVIDEORENDERERVIEW_H



@class FBMediaViewVideoRenderer;
@class FBAdBlurredOverlayView;
@protocol FBAdVideoRendererViewDelegate;

@interface FBAdVideoRendererView : FBMediaViewVideoRenderer

@property (weak, nonatomic) FBAdBlurredOverlayView *blurredBackgroundView; // ivar: _blurredBackgroundView
@property (weak, nonatomic) NSObject<FBAdVideoRendererViewDelegate> *delegate; // ivar: _delegate


-(void)setupDefaultBackground;
-(id)init;
-(id)initWithBackgroundImage:(id)arg0 ;
-(void)videoDidChangeVolume;
-(void)layoutSubviews;
-(void)videoDidLoad;
-(void)videoDidPause;
-(void)videoDidPlay;
-(void)videoDidEngageSeek;
-(void)videoDidSeek;
-(void)videoDidDisengageSeek;
-(void)videoDidEnd;
-(void)videoDidFailWithError:(id)arg0 ;


@end


#endif