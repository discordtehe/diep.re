// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPVASTDURATIONOFFSET_H
#define MPVASTDURATIONOFFSET_H


#import <Foundation/Foundation.h>

@class MPVASTModel;

@interface MPVASTDurationOffset : MPVASTModel

@property (readonly, nonatomic) NSUInteger type; // ivar: _type
@property (readonly, copy, nonatomic) NSString *offset; // ivar: _offset


-(id)initWithDictionary:(id)arg0 ;
-(CGFloat)timeIntervalForVideoWithDuration:(CGFloat)arg0 ;


@end


#endif