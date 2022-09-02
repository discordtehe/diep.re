// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCCGSIZEVALUE_H
#define MCCGSIZEVALUE_H


#import <Foundation/Foundation.h>


@interface MCCGSizeValue : NSObject

@property (readonly, nonatomic) CGSize value; // ivar: mValue
@property (readonly, nonatomic) CGSize size;


-(id)initWithCGSize:(struct CGSize )arg0 ;
+(id)valueWithCGSize:(struct CGSize )arg0 ;
+(id)getNSCGSizeWithWidth:(float)arg0 andHeight:(float)arg1 ;
+(id)getNSCGSize:(struct CGSize )arg0 ;
+(id)getNSCGSize;


@end


#endif