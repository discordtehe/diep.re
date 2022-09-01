// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FRCONTEXTUALBUTTON_H
#define FRCONTEXTUALBUTTON_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class FRCreativeMapping;
@class FRRemoteImage;
@class FRContextualContent;

@interface FRContextualButton : FRCreativeMapping

@property _FloatAndUnit x; // ivar: _x
@property _FloatAndUnit y; // ivar: _y
@property _FloatAndUnit width; // ivar: _width
@property _FloatAndUnit height; // ivar: _height
@property NSInteger align; // ivar: _align
@property NSInteger valign; // ivar: _valign
@property (retain) NSString *imageURL; // ivar: _imageURL
@property (retain) NSString *imageClickedURL; // ivar: _imageClickedURL
@property (retain) FRRemoteImage *image; // ivar: _image
@property (retain) FRRemoteImage *imageClicked; // ivar: _imageClicked
@property (retain) UIButton *button; // ivar: _button
@property (weak) FRContextualContent *content; // ivar: _content


-(id)initWithDictionary:(id)arg0 content:(id)arg1 ;
-(void)loadImageWithDelegate:(id)arg0 ;
-(void)action:(id)arg0 ;
+(id)objectWithDictionary:(id)arg0 content:(id)arg1 ;


@end


#endif