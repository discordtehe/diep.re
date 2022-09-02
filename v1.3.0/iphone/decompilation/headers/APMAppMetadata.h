// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef APMAPPMETADATA_H
#define APMAPPMETADATA_H


#import <Foundation/Foundation.h>


@interface APMAppMetadata : NSObject

@property (readonly, nonatomic) int lastBundleIndex; // ivar: _lastBundleIndex
@property (nonatomic) CGFloat lastBundleStartTimestamp; // ivar: _lastBundleStartTimestamp
@property (nonatomic) CGFloat lastBundleEndTimestamp; // ivar: _lastBundleEndTimestamp


-(id)initWithLastBundleIndex:(int)arg0 lastBundleStartTimestamp:(CGFloat)arg1 lastBundleEndTimestamp:(CGFloat)arg2 ;
-(void)incrementLastBundleIndex;


@end


#endif