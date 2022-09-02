// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADADAPTERSTATUS_H
#define GADADAPTERSTATUS_H


#import <Foundation/Foundation.h>

@protocol NSCopying;

@interface GADAdapterStatus : NSObject <NSCopying>

 {
    NSString *_statusDescription;
}


@property (readonly, nonatomic) NSInteger state; // ivar: _state
@property (readonly, nonatomic) NSString *description;
@property (readonly, nonatomic) CGFloat latency; // ivar: _latency


-(id)initWithState:(NSInteger)arg0 latency:(CGFloat)arg1 description:(id)arg2 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(BOOL)isEqual:(id)arg0 ;
-(NSUInteger)hash;


@end


#endif