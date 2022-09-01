// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CLSSYMBOLRESOLVER_H
#define CLSSYMBOLRESOLVER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface CLSSymbolResolver : NSObject {
    NSMutableArray *_binaryImages;
}




-(id)init;
-(BOOL)loadBinaryImagesFromFile:(id)arg0 ;
-(id)loadedBinaryImageForPC:(NSUInteger)arg0 ;
-(BOOL)fillInImageDetails:(struct ? *)arg0 forUUID:(id)arg1 ;
-(id)frameForAddress:(NSUInteger)arg0 ;
-(BOOL)updateStackFrame:(id)arg0 ;


@end


#endif