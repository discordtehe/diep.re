// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBTOASTSTYLE_H
#define FBTOASTSTYLE_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface FBToastStyle : NSObject

@property (retain, nonatomic) UIColor *backgroundColor; // ivar: _backgroundColor
@property (retain, nonatomic) UIColor *messageColor; // ivar: _messageColor
@property (nonatomic) CGFloat maxWidthPercentage; // ivar: _maxWidthPercentage
@property (nonatomic) CGFloat maxHeightPercentage; // ivar: _maxHeightPercentage
@property (retain, nonatomic) UIFont *messageFont; // ivar: _messageFont
@property (nonatomic) NSInteger messageAlignment; // ivar: _messageAlignment
@property (nonatomic) NSInteger messageNumberOfLines; // ivar: _messageNumberOfLines


-(id)init;


@end


#endif