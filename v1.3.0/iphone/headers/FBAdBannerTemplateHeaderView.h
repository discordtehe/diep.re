// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADBANNERTEMPLATEHEADERVIEW_H
#define FBADBANNERTEMPLATEHEADERVIEW_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class FBNativeAdBase;
@class FBNativeAdViewAttributes;
@class FBAdIconView;
@class FBAdOptionsView;
@protocol FBAdUpdatableView;

@interface FBAdBannerTemplateHeaderView : UIView <FBAdUpdatableView>



@property (weak, nonatomic) FBNativeAdBase *nativeAdBase; // ivar: _nativeAdBase
@property (weak, nonatomic) FBNativeAdViewAttributes *attributes; // ivar: _attributes
@property (weak, nonatomic) UILabel *headerTitleLabel; // ivar: _headerTitleLabel
@property (weak, nonatomic) UILabel *headerBodyLabel; // ivar: _headerBodyLabel
@property (weak, nonatomic) UIButton *ctaButton; // ivar: _ctaButton
@property (weak, nonatomic) FBAdIconView *iconView; // ivar: _iconView
@property (weak, nonatomic) FBAdOptionsView *adOptionsView; // ivar: _adOptionsView
@property (nonatomic, getter=isLoaded) BOOL loaded; // ivar: _loaded
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithFrame:(struct CGRect )arg0 ;
-(id)initWithCoder:(id)arg0 ;
-(id)initWithFrame:(struct CGRect )arg0 nativeAdBase:(id)arg1 attributes:(id)arg2 ;
-(void)createView;
-(void)setBounds:(struct CGRect )arg0 ;
-(void)updateView:(BOOL)arg0 ;


@end


#endif