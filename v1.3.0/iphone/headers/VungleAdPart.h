// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEADPART_H
#define VUNGLEADPART_H


#import <Foundation/Foundation.h>

@class VungleAdLegacy;
@protocol NSCoding;

@interface VungleAdPart : NSObject <NSCoding>



@property (weak) VungleAdLegacy *parentAdUnit; // ivar: _parentAdUnit
@property (readonly) NSString *filename;
@property (readonly) NSString *remotePath; // ivar: _remotePath
@property (getter=isReady) BOOL ready; // ivar: _ready
@property (readonly, getter=isLocal) BOOL local; // ivar: _local
@property (readonly, getter=isValid) BOOL valid;
@property (readonly) NSUInteger type; // ivar: _type


-(id)initWithRemotePath:(id)arg0 type:(NSUInteger)arg1 local:(BOOL)arg2 ;
-(id)initWithDictionary:(id)arg0 ;
-(id)initWithCoder:(id)arg0 ;
-(void)encodeWithCoder:(id)arg0 ;
-(id)description;
-(id)redirectURLFromURLQueryString:(id)arg0 ;


@end


#endif