// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADTEMPLATEFOOTERVIEW_H
#define FBADTEMPLATEFOOTERVIEW_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class FBNativeAdBase;
@class FBNativeAdViewAttributes;
@class FBAdLabel;
@protocol FBAdUpdatableView;

@interface FBAdTemplateFooterView : UIView <FBAdUpdatableView>



@property (weak, nonatomic) FBNativeAdBase *nativeAdBase; // ivar: _nativeAdBase
@property (weak, nonatomic) FBNativeAdViewAttributes *attributes; // ivar: _attributes
@property (weak, nonatomic) FBAdLabel *footerTitleLabel; // ivar: _footerTitleLabel
@property (weak, nonatomic) FBAdLabel *footerBodyLabel; // ivar: _footerBodyLabel
@property (weak, nonatomic) UIButton *ctaButton; // ivar: _ctaButton
@property (nonatomic) BOOL renderCTAOnly; // ivar: _renderCTAOnly
@property (nonatomic, getter=isLoaded) BOOL loaded; // ivar: _loaded
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithFrame:(struct CGRect )arg0 ;
-(id)initWithCoder:(id)arg0 ;
-(id)initWithFrame:(struct CGRect )arg0 nativeAdBase:(id)arg1 attributes:(id)arg2 ;
-(CGFloat)intrinsicHeightForNativeAd:(id)arg0 width:(CGFloat)arg1 ;
-(BOOL)bodyTextExistsInNativeAd:(id)arg0 ;
-(void)createView;
-(void)setBounds:(struct CGRect )arg0 ;
-(void)updateView:(BOOL)arg0 ;


@end


#endif