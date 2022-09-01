// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISABSTRACTVIEW_H
#define ISABSTRACTVIEW_H


#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>


@interface ISAbstractView : UIView

@property (nonatomic) int currentOrientation; // ivar: _currentOrientation
@property (retain, nonatomic) NSMutableArray *viewConstraintsArray; // ivar: _viewConstraintsArray
@property (nonatomic) BOOL shouldUpdateOreintation; // ivar: _shouldUpdateOreintation
@property (nonatomic) NSInteger currentViewOrientation; // ivar: _currentViewOrientation


-(id)init;
-(void)layoutSubviews;
-(void)setOrientationUpdates:(BOOL)arg0 ;
-(BOOL)updateViewOrientation;
-(BOOL)revertOrientationChanges;


@end


#endif