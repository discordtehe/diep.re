// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef UADSBANNERVIEW_H
#define UADSBANNERVIEW_H


#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>

@class UADSWebPlayerView;

@interface UADSBannerView : UIView

@property (nonatomic) CGSize adSize; // ivar: _adSize
@property (retain, nonatomic) UADSWebPlayerView *webPlayer; // ivar: _webPlayer
@property (nonatomic) NSInteger position; // ivar: _position
@property (retain, nonatomic) NSArray *views; // ivar: _views


-(id)initWithFrame:(struct CGRect )arg0 ;
-(void)dealloc;
-(void)addView:(id)arg0 ;
-(void)willMoveToWindow:(id)arg0 ;
-(struct CGPoint )getPointForPosition;
-(struct UIEdgeInsets )getSafeInsetsForContainer:(id)arg0 ;
-(void)close;
-(struct CGRect )getRect;
-(void)observeValueForKeyPath:(id)arg0 ofObject:(id)arg1 change:(id)arg2 context:(*void)arg3 ;
-(void)setViewFrame:(id)arg0 x:(float)arg1 y:(float)arg2 width:(float)arg3 height:(float)arg4 ;
-(id)getViewByName:(id)arg0 ;
+(id)getOrCreateInstance;
+(id)getInstance;
+(void)destroyInstance;


@end


#endif