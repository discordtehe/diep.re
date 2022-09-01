// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCCOLOR4BVALUE_H
#define MCCOLOR4BVALUE_H


#import <Foundation/Foundation.h>


@interface MCColor4BValue : NSObject

@property (readonly, nonatomic) _ccColor4B value; // ivar: mValue
@property (readonly, nonatomic) _ccColor4B color;


-(id)initWithColor4B:(struct _ccColor4B )arg0 ;
+(id)valueWithColor4B:(struct _ccColor4B )arg0 ;
+(id)getNSColor4B:(struct _ccColor4B )arg0 ;
+(id)getNSColor4B;


@end


#endif