// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBNATIVEADCOLLECTIONVIEWCELL_H
#define FBNATIVEADCOLLECTIONVIEWCELL_H


#import <UIKit/UIKit.h>

@class FBNativeAdView;

@interface FBNativeAdCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) FBNativeAdView *nativeAdView; // ivar: _nativeAdView
@property (nonatomic) BOOL adLoaded; // ivar: _adLoaded


-(id)initWithFrame:(struct CGRect )arg0 ;
-(NSInteger)type;
-(id)attributes;
-(void)populate:(id)arg0 ;
+(Class)specializeCellForType:(NSInteger)arg0 forAttributes:(id)arg1 ;


@end


#endif