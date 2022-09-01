// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADOMIDVIEWKEY_H
#define GADOMIDVIEWKEY_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol NSCopying;

@interface GADOMIDViewKey : NSObject <NSCopying>



@property (retain, nonatomic) UIView *view; // ivar: _view


-(NSUInteger)hash;
-(BOOL)isEqual:(id)arg0 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;


@end


#endif