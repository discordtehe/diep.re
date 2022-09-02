// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USRVWEBVIEWBACKGROUNDVIEW_H
#define USRVWEBVIEWBACKGROUNDVIEW_H


#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>


@interface USRVWebViewBackgroundView : UIView

@property (nonatomic) BOOL needsPlacement; // ivar: _needsPlacement
@property (copy, nonatomic) NSArray *subviews; // ivar: _subviews


-(id)initWithFrame:(struct CGRect )arg0 ;
-(void)willMoveToSuperview:(id)arg0 ;
-(void)didMoveToSuperview;
-(void)placeViewToBackground;
-(void)addSubview:(id)arg0 ;


@end


#endif