// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADMULTIPRODUCTVIEW_H
#define FBADMULTIPRODUCTVIEW_H

@class UIView<FBAdScrollView>;

#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class FBAdMultiProductCell;
@protocol FBAdMultiProductCellDelegate;
@protocol FBAdScrollViewDelegate;
@protocol FBAdUpdatableView;
@protocol FBAdMultiProductViewDelegate;

@interface FBAdMultiProductView : UIView <FBAdMultiProductCellDelegate, FBAdScrollViewDelegate, FBAdUpdatableView>



@property (weak, nonatomic) UIView<FBAdScrollView> *scrollView; // ivar: _scrollView
@property (weak, nonatomic) FBAdMultiProductCell *firstCell; // ivar: _firstCell
@property (copy, nonatomic) id *impressionBlock; // ivar: _impressionBlock
@property (copy, nonatomic) id *clickBlock; // ivar: _clickBlock
@property (nonatomic) BOOL loadedWasCalled; // ivar: _loadedWasCalled
@property (weak, nonatomic) NSObject<FBAdMultiProductViewDelegate> *delegate; // ivar: _delegate
@property (copy, nonatomic) NSArray *multiProductAds; // ivar: _multiProductAds
@property (readonly, nonatomic) BOOL hasAdMedia;
@property (readonly, nonatomic) NSUInteger multiProductCellStyle; // ivar: _multiProductCellStyle
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(id)initWithMultiProductCellStyle:(NSUInteger)arg0 ;
-(void)layoutSubviews;
-(void)updateView:(BOOL)arg0 ;
-(void)setHidden:(BOOL)arg0 ;
-(void)multiProductCellLoadedAndVisible:(id)arg0 ;
-(void)multiProductCellClicked:(id)arg0 withPosition:(struct CGPoint )arg1 inRect:(struct CGRect )arg2 ;
-(BOOL)shouldUseLargeLayoutStyle;
+(void)initialize;


@end


#endif