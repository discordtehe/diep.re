// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FLATBUNDLEHELPER_H
#define FLATBUNDLEHELPER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface FlatBundleHelper : NSObject

@property (nonatomic) id *parentObject; // ivar: _parentObject
@property (nonatomic) id *object; // ivar: _object
@property (retain, nonatomic) NSMutableDictionary *collectionKeys; // ivar: _collectionKeys


-(void)dealloc;
+(id)helperForObject:(id)arg0 withParent:(id)arg1 ;


@end


#endif