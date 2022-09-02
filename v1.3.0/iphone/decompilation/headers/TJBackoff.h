// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJBACKOFF_H
#define TJBACKOFF_H


#import <Foundation/Foundation.h>


@interface TJBackoff : NSObject

@property (readonly, nonatomic) int backoff; // ivar: _backoff
@property (readonly, nonatomic) int first; // ivar: _first
@property (readonly, nonatomic) int min; // ivar: _min
@property (readonly, nonatomic) int max; // ivar: _max
@property (readonly, nonatomic) float multiplier; // ivar: _multiplier


-(id)init;
-(id)initWithBackoff:(id)arg0 ;
-(void)updateWithArray:(id)arg0 ;
-(void)updateWithFirst:(id)arg0 min:(id)arg1 max:(id)arg2 multiplier:(id)arg3 ;
-(BOOL)isEqual:(id)arg0 ;
-(void)reset;
-(int)next;
-(int)getAndNext;


@end


#endif