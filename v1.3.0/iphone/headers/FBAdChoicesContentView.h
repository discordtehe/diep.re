// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADCHOICESCONTENTVIEW_H
#define FBADCHOICESCONTENTVIEW_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class FBAdReportingConfig;
@class FBAdCloseButton;
@class FBAdCollectionViewFlowLayout;
@class FBAdChoiceCollectionViewCell;
@protocol UICollectionViewDataSource;
@protocol UICollectionViewDelegateFlowLayout;

@interface FBAdChoicesContentView : UIView <UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>



@property (retain, nonatomic) UICollectionView *collectionView; // ivar: _collectionView
@property (retain, nonatomic) UIView *lineView; // ivar: _lineView
@property (retain, nonatomic) UIButton *transparentDismissButton; // ivar: _transparentDismissButton
@property (retain, nonatomic) FBAdReportingConfig *adReportingConfig; // ivar: _adReportingConfig
@property (retain, nonatomic) FBAdCloseButton *closeButton; // ivar: _closeButton
@property (retain, nonatomic) UIView *backgroundView; // ivar: _backgroundView
@property (retain, nonatomic) FBAdCollectionViewFlowLayout *layout; // ivar: _layout
@property (retain, nonatomic) FBAdChoiceCollectionViewCell *prototypeCell; // ivar: _prototypeCell
@property (nonatomic) NSInteger layoutType; // ivar: _layoutType
@property (copy, nonatomic) id *onOptionSelected; // ivar: _onOptionSelected
@property (copy, nonatomic) id *onDismiss; // ivar: _onDismiss
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)dismissView;
-(void)handleCloseButtonTap;
-(CGFloat)preferredCollectionViewHeight;
-(void)configureCell:(id)arg0 forIndexPath:(id)arg1 ;
-(id)collectionView:(id)arg0 cellForItemAtIndexPath:(id)arg1 ;
-(struct CGSize )collectionView:(id)arg0 layout:(id)arg1 sizeForItemAtIndexPath:(id)arg2 ;
-(NSInteger)collectionView:(id)arg0 numberOfItemsInSection:(NSInteger)arg1 ;
-(void)collectionView:(id)arg0 didSelectItemAtIndexPath:(id)arg1 ;


@end


#endif