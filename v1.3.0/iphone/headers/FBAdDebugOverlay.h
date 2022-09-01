// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADDEBUGOVERLAY_H
#define FBADDEBUGOVERLAY_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>


@interface FBAdDebugOverlay : UIView

@property (retain, nonatomic) UILabel *debugContextLabel; // ivar: _debugContextLabel
@property (retain, nonatomic) UIButton *dismissButton; // ivar: _dismissButton
@property (copy, nonatomic) NSString *placementID; // ivar: _placementID
@property (copy, nonatomic) NSString *timestamp; // ivar: _timestamp


-(id)initWithCoder:(id)arg0 ;
-(id)initWithFrame:(struct CGRect )arg0 ;
-(id)initWithPlacementID:(id)arg0 ;
-(BOOL)pointInside:(struct CGPoint )arg0 withEvent:(id)arg1 ;
-(void)updateDebugContextLabel:(id)arg0 ;
-(void)dismissButtonClicked:(id)arg0 ;
-(void)constructDismissButton;
-(void)constructDebugContextLabel;
-(id)dateFormatter;
+(void)addToSuperview:(id)arg0 withPlacementID:(id)arg1 ;
+(void)updatePlacementID:(id)arg0 inView:(id)arg1 ;


@end


#endif