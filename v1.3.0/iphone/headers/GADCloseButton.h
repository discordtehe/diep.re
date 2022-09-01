// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADCLOSEBUTTON_H
#define GADCLOSEBUTTON_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class GADEventContext;
@protocol GADEventContextSource;

@interface GADCloseButton : UIButton <GADEventContextSource>

 {
    GADEventContext *_context;
}


@property (nonatomic) BOOL useCustomCloseImage; // ivar: _useCustomCloseImage
@property (nonatomic) BOOL enabledOnCustomClose; // ivar: _enabledOnCustomClose
@property (nonatomic) NSInteger preferredPosition; // ivar: _preferredPosition
@property (nonatomic) CGSize preferredTapSize; // ivar: _preferredTapSize
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) GADEventContext *context;


-(id)initWithFrame:(struct CGRect )arg0 context:(id)arg1 ;
-(id)initWithContext:(id)arg0 ;
-(struct CGSize )intrinsicContentSize;
-(void)updateImageAndEnabled;


@end


#endif