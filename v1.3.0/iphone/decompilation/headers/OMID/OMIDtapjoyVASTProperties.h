// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef OMIDTAPJOYVASTPROPERTIES_H
#define OMIDTAPJOYVASTPROPERTIES_H


#import <Foundation/Foundation.h>


@interface OMIDtapjoyVASTProperties : NSObject

@property (readonly, nonatomic, getter=isSkippable) BOOL skippable; // ivar: _skippable
@property (readonly, nonatomic) CGFloat skipOffset; // ivar: _skipOffset
@property (readonly, nonatomic, getter=isAutoPlay) BOOL autoPlay; // ivar: _autoPlay
@property (readonly, nonatomic) NSUInteger position; // ivar: _position


-(id)initWithSkipOffset:(CGFloat)arg0 autoPlay:(BOOL)arg1 position:(NSUInteger)arg2 ;
-(id)initWithAutoPlay:(BOOL)arg0 position:(NSUInteger)arg1 ;
-(id)initWithSkippable:(BOOL)arg0 skipOffset:(CGFloat)arg1 autoPlay:(BOOL)arg2 position:(NSUInteger)arg3 ;
-(id)toJSON;


@end


#endif