// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBGRADIENTVIEW_H
#define FBGRADIENTVIEW_H


#import <UIKit/UIKit.h>


@interface FBGradientView : UIView



-(id)initWithFrame:(struct CGRect )arg0 ;
-(void)setOpacity:(CGFloat)arg0 ;
-(void)setColors:(id)arg0 ;
-(void)setLocations:(id)arg0 ;
-(void)setStartPoint:(struct CGPoint )arg0 ;
-(void)setEndPoint:(struct CGPoint )arg0 ;
+(id)newWithColors:(id)arg0 ;
+(id)newWithColors:(id)arg0 opacity:(CGFloat)arg1 ;
+(id)newWithColors:(id)arg0 locations:(id)arg1 opacity:(CGFloat)arg2 ;
+(id)newWithColors:(id)arg0 locations:(id)arg1 startPoint:(struct CGPoint )arg2 endPoint:(struct CGPoint )arg3 opacity:(CGFloat)arg4 ;
+(id)newWithColors:(id)arg0 locations:(id)arg1 startPoint:(struct CGPoint )arg2 endPoint:(struct CGPoint )arg3 backgroundColor:(id)arg4 opacity:(CGFloat)arg5 ;
+(Class)layerClass;


@end


#endif