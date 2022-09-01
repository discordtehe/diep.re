// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef SSAWEBVIEW_H
#define SSAWEBVIEW_H


#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>


@interface SSAWebView : UIWebView

@property (retain, nonatomic) NSArray *controlsFramesForSecondaryWebview; // ivar: _controlsFramesForSecondaryWebview
@property (nonatomic) CGRect frameForCloseButton; // ivar: _frameForCloseButton


-(id)initWithFrame:(struct CGRect )arg0 ;
-(BOOL)pointInside:(struct CGPoint )arg0 withEvent:(id)arg1 ;
-(struct CGRect )frameForButtonFromDictionary:(id)arg0 ;


@end


#endif