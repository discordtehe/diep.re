// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCCOLOR3BVALUE_H
#define MCCOLOR3BVALUE_H


#import <Foundation/Foundation.h>


@interface MCColor3BValue : NSObject

@property (readonly, nonatomic) _ccColorThreeB value; // ivar: mValue
@property (readonly, nonatomic) _ccColorThreeB color;


-(id)initWithColor3B:(struct _ccColorThreeB )arg0 ;
+(id)valueWithColor3B:(struct _ccColorThreeB )arg0 ;
+(id)getNSColor3B:(struct _ccColorThreeB )arg0 ;
+(id)getNSColor3B;


@end


#endif