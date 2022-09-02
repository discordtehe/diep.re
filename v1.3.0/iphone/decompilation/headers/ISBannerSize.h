// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISBANNERSIZE_H
#define ISBANNERSIZE_H


#import <Foundation/Foundation.h>


@interface ISBannerSize : NSObject

@property (readonly) NSString *sizeDescription; // ivar: _sizeDescription
@property (readonly) NSInteger width; // ivar: _width
@property (readonly) NSInteger height; // ivar: _height


-(id)initWithWidth:(NSInteger)arg0 andHeight:(NSInteger)arg1 ;
-(id)initWithDescription:(id)arg0 ;


@end


#endif