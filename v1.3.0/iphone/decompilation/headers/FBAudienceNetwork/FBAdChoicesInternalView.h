// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADCHOICESINTERNALVIEW_H
#define FBADCHOICESINTERNALVIEW_H


#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class FBNativeAdViewAttributes;
@class FBAdReportingCoordinator;
@class FBNativeAdDataModel;
@class FBAdImage;
@class FBAdChoicesView;
@class FBNativeAdBase;
@protocol FBAdUpdatableView;

@interface FBAdChoicesInternalView : UIView <FBAdUpdatableView>



@property (weak, nonatomic) FBNativeAdViewAttributes *attributes; // ivar: _attributes
@property (weak, nonatomic) UIImageView *iconImageView; // ivar: _iconImageView
@property (readonly, copy, nonatomic) NSURL *adChoicesLinkURL; // ivar: _adChoicesLinkURL
@property (readonly, copy, nonatomic) NSString *adChoicesText; // ivar: _adChoicesText
@property (readonly, copy, nonatomic) NSString *inlineClientToken; // ivar: _inlineClientToken
@property (nonatomic, getter=isAnimating) BOOL animating; // ivar: _animating
@property (nonatomic, getter=isExtended) BOOL extended; // ivar: _extended
@property (retain, nonatomic) FBAdReportingCoordinator *reportingCoordinator; // ivar: _reportingCoordinator
@property (retain, nonatomic) FBNativeAdDataModel *dataModel; // ivar: _dataModel
@property (readonly, weak, nonatomic) FBAdImage *adChoicesIcon; // ivar: _adChoicesIcon
@property (weak, nonatomic) UILabel *label; // ivar: _label
@property (weak, nonatomic) UIViewController *rootViewController; // ivar: _rootViewController
@property (readonly, nonatomic) CGFloat extensionAmount;
@property (nonatomic, getter=isExpandable) BOOL expandable; // ivar: _expandable
@property (weak, nonatomic) FBAdChoicesView *ownerView; // ivar: _ownerView
@property (retain, nonatomic) FBNativeAdBase *nativeAd; // ivar: _nativeAd
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithNativeAd:(id)arg0 ;
-(id)initWithViewController:(id)arg0 inlineClientToken:(id)arg1 adChoicesIcon:(id)arg2 adChoicesLinkURL:(id)arg3 adChoicesText:(id)arg4 attributes:(id)arg5 expandable:(BOOL)arg6 ;
-(void)updateViewsFromNativeAd:(id)arg0 ;
-(void)updateViewsWithViewController:(id)arg0 inlineClientToken:(id)arg1 adChoicesIcon:(id)arg2 adChoicesLinkURL:(id)arg3 adChoicesText:(id)arg4 attributes:(id)arg5 expandable:(BOOL)arg6 initialized:(BOOL)arg7 ;
-(void)updateAdChoicesInfoFromNativeAd:(id)arg0 ;
-(void)updateView:(BOOL)arg0 ;
-(void)iconImageTapped:(id)arg0 ;
-(void)extend:(BOOL)arg0 animate:(BOOL)arg1 persistChanges:(BOOL)arg2 ;
-(id)generateLabel;
-(void)updateUI;
-(void)updateMask;
-(NSUInteger)maskCornerForCurrentState;
-(BOOL)isAdChoicesIconAvailable;
-(CGFloat)relativeHeightForAdSize:(struct CGSize )arg0 forCorner:(NSUInteger)arg1 ;
-(CGFloat)relativeWidthForAdSize:(struct CGSize )arg0 forCorner:(NSUInteger)arg1 ;
-(BOOL)isRightCorner:(NSUInteger)arg0 ;
+(void)initialize;


@end


#endif