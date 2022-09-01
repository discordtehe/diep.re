// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCTEXTVIEW_H
#define ADCTEXTVIEW_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class ADCView;
@protocol UITextViewDelegate;

@interface ADCTextView : ADCView <UITextViewDelegate>

 {
    UITextView *_textView;
    BOOL _editing;
}


@property (retain, nonatomic) NSString *text; // ivar: _text
@property (retain, nonatomic) NSString *typeface; // ivar: _typeface
@property (nonatomic) NSUInteger size; // ivar: _size
@property (retain, nonatomic) UIColor *color; // ivar: _color
@property (retain, nonatomic) UIColor *backgroundColor; // ivar: _backgroundColor
@property (nonatomic) BOOL editable; // ivar: _editable
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithFrame:(struct CGRect )arg0 ;
-(void)buttonTapped;


@end


#endif