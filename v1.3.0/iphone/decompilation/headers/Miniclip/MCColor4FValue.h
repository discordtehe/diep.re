// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCCOLOR4FVALUE_H
#define MCCOLOR4FVALUE_H


#import <Foundation/Foundation.h>


@interface MCColor4FValue : NSObject

@property (readonly, nonatomic) _ccColor4F value; // ivar: mValue
@property (readonly, nonatomic) _ccColor4F color;


-(id)initWithColor4F:(struct _ccColor4F )arg0 ;
+(id)valueWithColor4F:(struct _ccColor4F )arg0 ;
+(id)getNSColor4F:(struct _ccColor4F )arg0 ;
+(id)getNSColor4F;


@end


#endif