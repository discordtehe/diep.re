// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCCACHEVALUE_H
#define CCCACHEVALUE_H


#import <Foundation/Foundation.h>


@interface CCCacheValue : NSObject

@property (retain, nonatomic) NSString *fullpath; // ivar: _fullpath
@property (nonatomic) int resolutionType; // ivar: _resolutionType
@property (retain, nonatomic) NSString *resourcePack; // ivar: _resourcePack


-(id)initWithFullPath:(id)arg0 resolutionType:(int)arg1 andResourcePack:(id)arg2 ;
-(void)dealloc;


@end


#endif