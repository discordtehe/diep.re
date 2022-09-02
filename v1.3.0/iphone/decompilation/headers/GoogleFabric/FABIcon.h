// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FABICON_H
#define FABICON_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface FABIcon : NSObject

@property (copy, nonatomic) NSData *data; // ivar: _data
@property (copy, nonatomic) NSString *dataHash; // ivar: _dataHash
@property (nonatomic) CGSize size; // ivar: _size
@property (nonatomic) BOOL prerendered; // ivar: _prerendered
@property (readonly, nonatomic) CGFloat surfaceArea;
@property (readonly, nonatomic) BOOL isWithinMaxSurfaceArea;


-(id)initWithData:(id)arg0 dataHash:(id)arg1 size:(struct CGSize )arg2 prerendered:(BOOL)arg3 ;
-(id)initWithData:(id)arg0 size:(struct CGSize )arg1 prerendered:(BOOL)arg2 ;
-(id)initWithData:(id)arg0 size:(struct CGSize )arg1 ;
-(id)initWithPNGImageAtPath:(id)arg0 size:(struct CGSize )arg1 prerendered:(BOOL)arg2 ;
-(BOOL)largerThanSize:(struct CGSize )arg0 ;
+(BOOL)isWithinMaxSurfaceAreaWithImage:(id)arg0 ;


@end


#endif