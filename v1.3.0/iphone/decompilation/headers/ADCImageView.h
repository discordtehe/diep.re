// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCIMAGEVIEW_H
#define ADCIMAGEVIEW_H


#import <UIKit/UIKit.h>

@class ADCView;

@interface ADCImageView : ADCView

@property (retain, nonatomic) UIImage *image; // ivar: _image
@property (retain, nonatomic) UIImageView *imageView; // ivar: _imageView
@property (nonatomic) CGRect expectedFrame; // ivar: _expectedFrame


-(id)initWithFrame:(struct CGRect )arg0 image:(id)arg1 ;
-(void)dealloc;


@end


#endif