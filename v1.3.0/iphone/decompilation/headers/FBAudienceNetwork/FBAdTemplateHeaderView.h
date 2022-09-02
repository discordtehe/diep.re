// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADTEMPLATEHEADERVIEW_H
#define FBADTEMPLATEHEADERVIEW_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class FBNativeAdBase;
@class FBNativeAdViewAttributes;
@class FBAdLabel;
@class FBAdIconView;
@class FBAdOptionsView;
@protocol FBAdUpdatableView;

@interface FBAdTemplateHeaderView : UIView <FBAdUpdatableView>



@property (weak, nonatomic) FBNativeAdBase *nativeAdBase; // ivar: _nativeAdBase
@property (weak, nonatomic) FBNativeAdViewAttributes *attributes; // ivar: _attributes
@property (weak, nonatomic) FBAdLabel *headerTitleLabel; // ivar: _headerTitleLabel
@property (weak, nonatomic) FBAdLabel *headerBodyLabel; // ivar: _headerBodyLabel
@property (weak, nonatomic) FBAdLabel *headerDescriptionLabel; // ivar: _headerDescriptionLabel
@property (weak, nonatomic) FBAdIconView *iconView; // ivar: _iconView
@property (weak, nonatomic) FBAdOptionsView *adOptionsView; // ivar: _adOptionsView
@property (nonatomic) BOOL hideLinkDescription; // ivar: _hideLinkDescription
@property (nonatomic, getter=isLoaded) BOOL loaded; // ivar: _loaded
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithFrame:(struct CGRect )arg0 ;
-(id)initWithCoder:(id)arg0 ;
-(id)initWithFrame:(struct CGRect )arg0 nativeAdBase:(id)arg1 attributes:(id)arg2 ;
-(CGFloat)intrinsicHeightForNativeAd:(id)arg0 width:(CGFloat)arg1 ;
-(void)createView;
-(void)setBounds:(struct CGRect )arg0 ;
-(void)updateView:(BOOL)arg0 ;


@end


#endif