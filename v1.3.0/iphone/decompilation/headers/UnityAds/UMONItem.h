// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef UMONITEM_H
#define UMONITEM_H


#import <Foundation/Foundation.h>


@interface UMONItem : NSObject

@property (retain, nonatomic) NSString *itemId; // ivar: _itemId
@property (nonatomic) CGFloat quantity; // ivar: _quantity
@property (retain, nonatomic) NSString *type; // ivar: _type
@property (readonly, nonatomic) NSString *productId; // ivar: _productId


-(id)initWithBuilder:(id)arg0 ;
+(id)build:(id)arg0 ;


@end


#endif