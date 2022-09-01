// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBGRADIENTVIEWCONFIG_H
#define FBGRADIENTVIEWCONFIG_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>
#import <UIKit/UIKit.h>

@protocol FBUIConfig;

@interface FBGradientViewConfig : NSObject <FBUIConfig>



@property (readonly, copy, nonatomic) NSArray *colors; // ivar: _colors
@property (readonly, copy, nonatomic) NSArray *locations; // ivar: _locations
@property (readonly, nonatomic) CGPoint startPoint; // ivar: _startPoint
@property (readonly, nonatomic) CGPoint endPoint; // ivar: _endPoint
@property (readonly, copy, nonatomic) UIColor *backgroundColor; // ivar: _backgroundColor
@property (readonly, nonatomic) CGFloat opacity; // ivar: _opacity
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)_initWithColors:(id)arg0 locations:(id)arg1 startPoint:(struct CGPoint )arg2 endPoint:(struct CGPoint )arg3 backgroundColor:(id)arg4 opacity:(CGFloat)arg5 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
+(id)newWithColors:(id)arg0 locations:(id)arg1 startPoint:(struct CGPoint )arg2 endPoint:(struct CGPoint )arg3 backgroundColor:(id)arg4 opacity:(CGFloat)arg5 ;
+(Class)viewClass;


@end


#endif