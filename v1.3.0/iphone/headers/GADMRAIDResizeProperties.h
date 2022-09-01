// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADMRAIDRESIZEPROPERTIES_H
#define GADMRAIDRESIZEPROPERTIES_H


#import <Foundation/Foundation.h>


@interface GADMRAIDResizeProperties : NSObject

@property (nonatomic) CGSize size; // ivar: _size
@property (nonatomic) CGVector offset; // ivar: _offset
@property (nonatomic) NSInteger customClosePosition; // ivar: _customClosePosition
@property (nonatomic) BOOL allowOffscreen; // ivar: _allowOffscreen


-(id)initWithDictionary:(id)arg0 ;
+(BOOL)isContentFrameValid:(struct CGRect )arg0 forBounds:(struct CGRect )arg1 allowOffscreen:(BOOL)arg2 closeButtonPosition:(NSInteger)arg3 ;


@end


#endif