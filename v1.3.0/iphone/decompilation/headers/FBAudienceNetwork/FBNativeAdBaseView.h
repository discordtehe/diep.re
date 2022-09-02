// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBNATIVEADBASEVIEW_H
#define FBNATIVEADBASEVIEW_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class FBNativeAdBase;
@class FBNativeAdViewAttributes;
@class FBAdIconView;
@class FBAdOptionsView;
@class FBAdBodyView;
@protocol FBNativeAdDelegate;
@protocol FBNativeAdBaseView;
@protocol FBAdUpdatableView;

@interface FBNativeAdBaseView : UIView <FBNativeAdDelegate, FBNativeAdBaseView, FBAdUpdatableView>



@property (readonly, nonatomic) FBNativeAdBase *nativeAdBase;
@property (nonatomic) NSInteger type; // ivar: _type
@property (copy, nonatomic) FBNativeAdViewAttributes *attributes; // ivar: _attributes
@property (weak, nonatomic) UIButton *callToActionButton; // ivar: _callToActionButton
@property (weak, nonatomic) UILabel *titleLabel; // ivar: _titleLabel
@property (weak, nonatomic) UILabel *descriptionLabel; // ivar: _descriptionLabel
@property (weak, nonatomic) UILabel *socialContextLabel; // ivar: _socialContextLabel
@property (weak, nonatomic) UILabel *advertiserNameLabel; // ivar: _advertiserNameLabel
@property (weak, nonatomic) FBAdIconView *iconView; // ivar: _iconView
@property (weak, nonatomic) FBAdOptionsView *adOptionsView; // ivar: _adOptionsView
@property (weak, nonatomic) FBAdBodyView *bodyView; // ivar: _bodyView
@property (weak, nonatomic) UIView *containerView; // ivar: _containerView
@property (nonatomic, getter=isLoaded) BOOL loaded; // ivar: _loaded
@property (retain, nonatomic) NSHashTable *clickableViews; // ivar: _clickableViews
@property (retain, nonatomic) NSHashTable *excludedClickableViews; // ivar: _excludedClickableViews
@property (weak, nonatomic) UIViewController *rootViewController; // ivar: _rootViewController
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, copy, nonatomic) NSArray *allInteractableTargets;


-(void)registerView;
-(id)init;
-(id)initWithFrame:(struct CGRect )arg0 ;
-(id)initWithCoder:(id)arg0 ;
-(void)populate:(id)arg0 ;
-(void)updateAttributes:(id)arg0 ;
-(void)initializeView;
-(void)constructCallToActionButton;
-(void)constructIconView;
-(void)constructAdOptionsView;
-(void)constructBodyView;
-(void)updateClickableViews;
-(BOOL)implementsSelector:(SEL)arg0 ;
-(void)constructView;
-(void)updateView:(BOOL)arg0 ;
-(void)layoutSubviews;
-(void)reset;
-(void)resetViews;
-(void)willMoveToWindow:(id)arg0 ;
-(void)dealloc;
-(id)fixedHeight;
-(struct CGRect )bounds;
+(id)defaultAttributes;
+(CGFloat)defaultDescriptionFontSize;
+(id)defaultTextColor;
+(BOOL)useRedesignedTemplates;


@end


#endif