// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCSPINENODECHILD_H
#define MCSPINENODECHILD_H


#import <Foundation/Foundation.h>

@class CCNodeRGBA;

@interface MCSpineNodeChild : CCNodeRGBA

@property (retain, nonatomic) NSString *spineType; // ivar: _spineType
@property (retain, nonatomic) NSString *spineName; // ivar: _spineName


-(id)initWithSpineType:(id)arg0 spineName:(id)arg1 ;
+(id)spineChildWithSpineType:(id)arg0 spineName:(id)arg1 ;


@end


#endif