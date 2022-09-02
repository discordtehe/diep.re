// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CLSMACHOBINARY_H
#define CLSMACHOBINARY_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface CLSMachOBinary : NSObject {
    NSURL *_url;
    CLSMachOFile _file;
    NSString *_instanceIdentifier;
}


@property (readonly, copy, nonatomic) NSURL *URL;
@property (readonly, copy, nonatomic) NSString *path;
@property (readonly, nonatomic) NSArray *slices; // ivar: _slices
@property (readonly, copy, nonatomic) NSString *instanceIdentifier;


-(id)initWithURL:(id)arg0 ;
-(void)dealloc;
-(void)enumerateUUIDs:(id)arg0 ;
-(id)sliceForArchitecture:(id)arg0 ;
+(id)MachOBinaryWithPath:(id)arg0 ;
+(id)hashNSString:(id)arg0 ;


@end


#endif