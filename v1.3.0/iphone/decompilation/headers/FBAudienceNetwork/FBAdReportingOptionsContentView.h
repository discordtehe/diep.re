// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADREPORTINGOPTIONSCONTENTVIEW_H
#define FBADREPORTINGOPTIONSCONTENTVIEW_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class FBAdCollectionViewFlowLayout;
@class FBAdReportIcon;
@class FBAdReportingOptionCollectionViewCell;
@class FBAdBackButton;
@protocol UICollectionViewDataSource;
@protocol UICollectionViewDelegateFlowLayout;

@interface FBAdReportingOptionsContentView : UIView <UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>



@property (retain, nonatomic) UICollectionView *collectionView; // ivar: _collectionView
@property (retain, nonatomic) FBAdCollectionViewFlowLayout *layout; // ivar: _layout
@property (retain, nonatomic) UIView *containerView; // ivar: _containerView
@property (retain, nonatomic) UIView *lineView; // ivar: _lineView
@property (retain, nonatomic) UIButton *transparentDismissButton; // ivar: _transparentDismissButton
@property (retain, nonatomic) UILabel *titleLabel; // ivar: _titleLabel
@property (retain, nonatomic) UILabel *descriptionLabel; // ivar: _descriptionLabel
@property (retain, nonatomic) UIButton *sendButton; // ivar: _sendButton
@property (retain, nonatomic) UIView *separatorView; // ivar: _separatorView
@property (retain, nonatomic) FBAdReportIcon *reportIcon; // ivar: _reportIcon
@property (retain, nonatomic) FBAdReportingOptionCollectionViewCell *prototypeCell; // ivar: _prototypeCell
@property (retain, nonatomic) FBAdBackButton *backButton; // ivar: _backButton
@property (copy, nonatomic) NSString *title; // ivar: _title
@property (copy, nonatomic) NSString *heading; // ivar: _heading
@property (copy, nonatomic) NSArray *items; // ivar: _items
@property (nonatomic) NSInteger layoutType; // ivar: _layoutType
@property (copy, nonatomic) id *onDismiss; // ivar: _onDismiss
@property (copy, nonatomic) id *onBack; // ivar: _onBack
@property (copy, nonatomic) id *onSelect; // ivar: _onSelect
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithTitle:(id)arg0 heading:(id)arg1 items:(id)arg2 ;
-(void)dismissView;
-(void)handleBackButtonTap;
-(id)collectionView:(id)arg0 cellForItemAtIndexPath:(id)arg1 ;
-(struct CGSize )collectionView:(id)arg0 layout:(id)arg1 sizeForItemAtIndexPath:(id)arg2 ;
-(NSInteger)collectionView:(id)arg0 numberOfItemsInSection:(NSInteger)arg1 ;
-(void)collectionView:(id)arg0 didSelectItemAtIndexPath:(id)arg1 ;


@end


#endif