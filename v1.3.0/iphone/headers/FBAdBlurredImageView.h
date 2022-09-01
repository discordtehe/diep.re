// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADBLURREDIMAGEVIEW_H
#define FBADBLURREDIMAGEVIEW_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@protocol FBAdUpdatableView;

@interface FBAdBlurredImageView : UIView <FBAdUpdatableView>



@property (retain, nonatomic) UIImageView *blurredImageView; // ivar: _blurredImageView
@property (retain, nonatomic) UIVisualEffectView *blurEffectView; // ivar: _blurEffectView
@property (nonatomic) BOOL needsImageBlurring; // ivar: _needsImageBlurring
@property (retain, nonatomic) UIImage *image; // ivar: _image
@property (weak, nonatomic) UIImageView *imageView; // ivar: _imageView
@property (nonatomic) BOOL showBlurImageOnly; // ivar: _showBlurImageOnly
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(id)initWithFrame:(struct CGRect )arg0 ;
-(id)initWithCoder:(id)arg0 ;
-(id)initWithImage:(id)arg0 ;
-(void)setupViewsWithImage:(id)arg0 ;
-(void)layoutSubviews;
-(void)updateView:(BOOL)arg0 ;
+(void)initialize;


@end


#endif