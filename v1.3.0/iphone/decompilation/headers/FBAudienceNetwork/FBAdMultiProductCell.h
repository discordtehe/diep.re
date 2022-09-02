// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADMULTIPRODUCTCELL_H
#define FBADMULTIPRODUCTCELL_H

@class EAGLSharegroup;

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class FBGradientView;
@class FBNativeAdMultiProductDataModel;
@class FBAdBlurredImageView;
@class FBAdViewabilityValidator;
@protocol FBAdViewabilityValidatorDelegate;
@protocol FBAdScrollViewCell;
@protocol FBAdUpdatableView;
@protocol FBAdMultiProductCellDelegate;

@interface FBAdMultiProductCell : UIView <FBAdViewabilityValidatorDelegate, FBAdScrollViewCell, FBAdUpdatableView>



@property (nonatomic) NSInteger lastAdViewabilityStatus; // ivar: _lastAdViewabilityStatus
@property (nonatomic) BOOL imageLoaded; // ivar: _imageLoaded
@property (weak, nonatomic) UILabel *headlineLabel; // ivar: _headlineLabel
@property (weak, nonatomic) UILabel *linkDescriptionLabel; // ivar: _linkDescriptionLabel
@property (weak, nonatomic) UILabel *ctaLabel; // ivar: _ctaLabel
@property (weak, nonatomic) FBGradientView *gradientView; // ivar: _gradientView
@property (weak, nonatomic) FBNativeAdMultiProductDataModel *content; // ivar: _content
@property (weak, nonatomic) FBAdBlurredImageView *imageView; // ivar: _imageView
@property (weak, nonatomic) NSObject<FBAdMultiProductCellDelegate> *delegate; // ivar: _delegate
@property (retain, nonatomic) FBAdViewabilityValidator *viewabilityValidator; // ivar: _viewabilityValidator
@property (retain, nonatomic) EAGLSharegroup *eaglSharegroup; // ivar: _eaglSharegroup
@property (readonly, nonatomic) NSUInteger multiProductCellStyle; // ivar: _multiProductCellStyle
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithViewablePercentage:(NSInteger)arg0 multiProductCellStyle:(NSUInteger)arg1 ;
-(id)fdsHighlightColor;
-(id)fdsSecondaryTextColor;
-(void)layoutSubviews;
-(void)setHidden:(BOOL)arg0 ;
-(void)setupCornerRadiusAndShadow;
-(void)updateView:(BOOL)arg0 ;
-(void)updateViewForImageAndTextStyleWithBounds:(struct CGRect )arg0 ;
-(void)updateViewForImageStyleWithBounds:(struct CGRect )arg0 ;
-(void)tellDelegateIfLoadedAndVisible;
-(void)gestureRecognizerTappedCell:(id)arg0 ;
-(BOOL)viewabilityValidator:(id)arg0 checkedWithStatus:(NSInteger)arg1 ;
-(void)dispatchClickedWithPosition:(struct CGPoint )arg0 inRect:(struct CGRect )arg1 ;
-(void)updateCellWithData:(id)arg0 ;
+(void)initialize;


@end


#endif