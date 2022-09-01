// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBNATIVEADTABLEVIEWCELL_H
#define FBNATIVEADTABLEVIEWCELL_H


#import <UIKit/UIKit.h>

@class FBNativeAdView;

@interface FBNativeAdTableViewCell : UITableViewCell

@property (weak, nonatomic) FBNativeAdView *nativeAdView; // ivar: _nativeAdView
@property (nonatomic) BOOL adLoaded; // ivar: _adLoaded


-(id)initWithStyle:(NSInteger)arg0 reuseIdentifier:(id)arg1 ;
-(NSInteger)type;
-(id)attributes;
-(id)initWithType:(NSInteger)arg0 withAttributes:(id)arg1 reuseIdentifier:(id)arg2 ;
-(void)setFrame:(struct CGRect )arg0 ;
-(void)setBounds:(struct CGRect )arg0 ;
-(void)populate:(id)arg0 ;
+(Class)specializeCellForType:(NSInteger)arg0 forAttributes:(id)arg1 ;


@end


#endif