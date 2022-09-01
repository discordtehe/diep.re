// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADSTORIESPAGEVIEW_H
#define FBADSTORIESPAGEVIEW_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class FBAdTimer;
@class FBAdVideoRendererView;
@protocol FBAdVideoRendererViewDelegate;
@protocol FBAdStoriesPageViewDelegate;

@interface FBAdStoriesPageView : UIView <FBAdVideoRendererViewDelegate>



@property (nonatomic) ? imageViewCurrentTime; // ivar: _imageViewCurrentTime
@property (retain, nonatomic) FBAdTimer *imageViewTimer; // ivar: _imageViewTimer
@property (retain, nonatomic) UIImageView *imageView; // ivar: _imageView
@property (retain, nonatomic) FBAdVideoRendererView *videoRendererView; // ivar: _videoRendererView
@property (readonly, nonatomic) ? duration;
@property (nonatomic) ? currentTime;
@property (nonatomic) CGFloat volume; // ivar: _volume
@property (weak, nonatomic) NSObject<FBAdStoriesPageViewDelegate> *delegate; // ivar: _delegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)configureWithDataModel:(id)arg0 placementDefinition:(id)arg1 pageIndex:(NSInteger)arg2 pageCount:(NSInteger)arg3 ;
-(void)configureAsImagePageWithDataModel:(id)arg0 ;
-(void)configureAsVideoPageWithDataModel:(id)arg0 placementDefinition:(id)arg1 pageIndex:(NSInteger)arg2 pageCount:(NSInteger)arg3 ;
-(void)fadeInView:(id)arg0 ;
-(void)layoutSubviews;
-(void)playContent;
-(void)pauseContent;
-(BOOL)isPlaying;
-(struct ? )defaultImageDisplayDuration;
-(void)videoViewDidLoad:(id)arg0 ;
-(void)videoView:(id)arg0 didFailWithError:(id)arg1 ;
-(void)videoViewDidEnd:(id)arg0 ;
-(void)pageTimer:(id)arg0 ;


@end


#endif