// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol GADMediaContentDisplaying

@property (readonly, nonatomic) UIView *mediaView;
@property (readonly, nonatomic) NSObject<GADVideoControlling> *videoController;
@property (readonly, nonatomic) CGSize intrinsicContentSize;
@property (readonly, nonatomic) CGFloat aspectRatio;
@property (retain, nonatomic) GADNativeAdImage *mainImage;

-(id)mediaView;
-(id)videoController;
-(struct CGSize )intrinsicContentSize;
-(CGFloat)aspectRatio;
-(id)mainImage;
-(void)setMainImage:(id)arg0 ;

@end

